package com.transsion.postdetail.comment;

import android.text.Editable;
import android.text.TextWatcher;
import com.transsion.moviedetailapi.bean.CommentBean;

public interface i0 extends TextWatcher {

    public static final class a {
        public static void a(i0 i0Var, Editable editable) {
        }

        public static void b(i0 i0Var, CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    void F();

    void T(Editable editable, CommentBean commentBean);

    @Override
    void afterTextChanged(Editable editable);

    @Override
    void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12);
}
