package com.transsion.usercenter.setting.labelsfeedback;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.usercenter.setting.labelsfeedback.model.FBContact;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsnet.loginapi.bean.Country;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import xu.e0;

public final class h extends RecyclerView.Adapter {

    private final FbDataModel f55296a;

    private final i f55297b;

    private a f55298c;

    public final class a extends RecyclerView.a0 {

        private final LinearLayout f55299a;

        private final UCEditText f55300b;

        private final AppCompatTextView f55301c;

        private final ShapeableImageView f55302d;

        private final AppCompatEditText f55303e;

        private final AppCompatEditText f55304f;

        final h f55305g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(h hVar, e0 binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f55305g = hVar;
            LinearLayout root = binding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            this.f55299a = root;
            UCEditText editText = binding.f75557d;
            Intrinsics.g(editText, "editText");
            this.f55300b = editText;
            AppCompatTextView countTextView = binding.f75555b;
            Intrinsics.g(countTextView, "countTextView");
            this.f55301c = countTextView;
            ShapeableImageView imageView = binding.f75558e;
            Intrinsics.g(imageView, "imageView");
            this.f55302d = imageView;
            AppCompatEditText countryEditText = binding.f75556c;
            Intrinsics.g(countryEditText, "countryEditText");
            this.f55303e = countryEditText;
            AppCompatEditText phoneEditText = binding.f75559f;
            Intrinsics.g(phoneEditText, "phoneEditText");
            this.f55304f = phoneEditText;
        }

        public final AppCompatTextView f() {
            return this.f55301c;
        }

        public final AppCompatEditText g() {
            return this.f55303e;
        }

        public final UCEditText h() {
            return this.f55300b;
        }

        public final ShapeableImageView i() {
            return this.f55302d;
        }

        public final AppCompatEditText j() {
            return this.f55304f;
        }

        public final LinearLayout k() {
            return this.f55299a;
        }
    }

    public static final class b implements TextWatcher {

        final a f55306a;

        final h f55307b;

        public b(a aVar, h hVar) {
            this.f55306a = aVar;
            this.f55307b = hVar;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String string;
            int length = editable != null ? editable.length() : 0;
            this.f55306a.f().setText(length + "/500");
            this.f55307b.m().setContent((editable == null || (string = editable.toString()) == null) ? null : StringsKt.n1(string).toString());
            i iVarL = this.f55307b.l();
            if (iVarL != null) {
                iVarL.b(this.f55307b);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            String string;
            FBContact contact = h.this.m().getContact();
            if (editable == null || (string = editable.toString()) == null) {
                string = "";
            }
            contact.setPhone(string);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public h(FbDataModel model, i iVar) {
        Intrinsics.h(model, "model");
        this.f55296a = model;
        this.f55297b = iVar;
    }

    public static final void o(h hVar, View view) {
        i iVar = hVar.f55297b;
        if (iVar != null) {
            iVar.e(hVar);
        }
    }

    public static final void p(h hVar, View view) {
        i iVar = hVar.f55297b;
        if (iVar != null) {
            iVar.a(hVar);
        }
    }

    public static final void q(h hVar, View view) {
        i iVar = hVar.f55297b;
        if (iVar != null) {
            iVar.i(hVar);
        }
    }

    @Override
    public int getItemCount() {
        return 1;
    }

    public final void j(Country country) {
        AppCompatEditText appCompatEditTextG;
        if (country != null) {
            this.f55296a.getContact().setCountry(country);
            String str = country.getCountry_s() + " +" + country.getCode();
            a aVar = this.f55298c;
            if (aVar == null || (appCompatEditTextG = aVar.g()) == null) {
                return;
            }
            appCompatEditTextG.setText(str);
        }
    }

    public final void k(String str) {
        ShapeableImageView shapeableImageViewI;
        i iVar;
        this.f55296a.setImagePath(str);
        a aVar = this.f55298c;
        if (aVar == null || (shapeableImageViewI = aVar.i()) == null || (iVar = this.f55297b) == null) {
            return;
        }
        iVar.c(this, shapeableImageViewI);
    }

    public final i l() {
        return this.f55297b;
    }

    public final FbDataModel m() {
        return this.f55296a;
    }

    @Override
    public void onBindViewHolder(a holder, int i10) {
        Intrinsics.h(holder, "holder");
        holder.k().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                h.o(this.f55293a, view);
            }
        });
        holder.i().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                h.p(this.f55294a, view);
            }
        });
        holder.f().setText("0/500");
        holder.h().addTextChangedListener(new b(holder, this));
        holder.g().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                h.q(this.f55295a, view);
            }
        });
        holder.j().addTextChangedListener(new c());
        String content = this.f55296a.getContent();
        if (content != null) {
            holder.h().setText(new SpannableStringBuilder(content));
        }
        k(this.f55296a.getImagePath());
        j(this.f55296a.getContact().getCountry());
        holder.j().setText(new SpannableStringBuilder(this.f55296a.getContact().getPhone()));
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        e0 e0VarC = e0.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(e0VarC, "inflate(...)");
        a aVar = new a(this, e0VarC);
        this.f55298c = aVar;
        return aVar;
    }
}
