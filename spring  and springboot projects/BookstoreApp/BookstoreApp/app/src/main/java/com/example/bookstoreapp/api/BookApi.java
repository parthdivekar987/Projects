package com.example.bookstoreapp.api;

import com.example.bookstoreapp.model.Book;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.*;

public interface BookApi {
    @GET("books")
    Call<List<Book>> getAllBooks();

    @GET("books/{id}")
    Call<Book> getBookById(@Path("id") Long id);

    @POST("books")
    Call<Book> createBook(@Body Book book);

    @PUT("books/{id}")
    Call<Book> updateBook(@Path("id") Long id, @Body Book book);

    @DELETE("books/{id}")
    Call<Void> deleteBook(@Path("id") Long id);
}
