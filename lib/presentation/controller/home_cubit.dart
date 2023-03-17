import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task5/models/category.dart';
import 'package:task5/models/product.dart';
import 'package:task5/models/slider.dart';
import 'package:task5/presentation/controller/home_state.dart';
import 'package:task5/util/dio/dio.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<SliderModel>? sliderModel = [];

  Future<void> getSlider() async {
    emit(ShowSliderLoading());
    await DioHelper.getData(
      url: '/api/slide',
    ).then((value) {
      for (int i = 0; i < value.data.length; i++) {
        sliderModel!.add(SliderModel.fromJson(value.data[i]));
      }

      emit(ShowSliderSuccess());
    }).catchError((error) {
      emit(ShowSliderError(error.toString()));
    });
  }

  List<CategoryModel>? categoryModel = [];

  Future<void> getCategory() async {
    emit(ShowCategoryLoading());
    await DioHelper.getData(
      url: '/api/category',
    ).then((value) {
      for (int i = 0; i < value.data.length; i++) {
        categoryModel!.add(CategoryModel.fromJson(value.data[i]));
      }
      emit(ShowCategorySuccess());
    }).catchError((error) {
      emit(ShowCategoryError(error.toString()));
    });
  }

  List<ProductModel>? productModel = [];

  Future<void> getProduct() async {
    emit(ShowProductLoading());
    await DioHelper.getData(
      url: '/api/product',
    ).then((value) {
      for (int i = 0; i < value.data.length; i++) {
        productModel!.add(ProductModel.fromJson(value.data[i]));
      }

      emit(ShowProductSuccess());
    }).catchError((error) {
      emit(ShowProductError(error.toString()));
    });
  }
  int? index = 0;

  void changeButton(int? value) {
    index = value;
    emit(ChangeColorButton());
  }
}
