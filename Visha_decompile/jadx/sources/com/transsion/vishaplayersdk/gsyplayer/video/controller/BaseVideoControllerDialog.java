package com.transsion.vishaplayersdk.gsyplayer.video.controller;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.text.TextUtilsCompat;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.utils.a;
import com.transsion.vishaplayersdk.R;
import defpackage.h27;
import java.util.Locale;

public abstract class BaseVideoControllerDialog extends DialogFragment implements h27.b {
    RecyclerView mRecyclerView;

    public boolean lambda$addDismissListener$0(View view, MotionEvent motionEvent) {
        dismiss();
        return false;
    }

    public void addDismissListener(View view) {
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return this.b.lambda$addDismissListener$0(view2, motionEvent);
            }
        });
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1004) {
            dismiss();
        }
    }

    @Override
    public void dismiss() {
        super.dismiss();
        h27.c().e(1090, new Object[0]);
    }

    public int getLayoutId() {
        return R.layout.dialog_controller_options_list;
    }

    public int getWith() {
        return (a.l(getContext()) * 2) / 3;
    }

    public void hideNavBar(Window window) {
        if (window != null) {
            window.setFlags(1024, 1024);
            window.getDecorView().setSystemUiVisibility(2566);
        }
    }

    public void initView(View view) {
        this.mRecyclerView = (RecyclerView) view.findViewById(R.id.rv_list);
    }

    @Override
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        getDialog().requestWindowFeature(1);
        return layoutInflater.inflate(getLayoutId(), (ViewGroup) null);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        h27.c().f(this, 1004);
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        window.setBackgroundDrawableResource(R.drawable.bg_gradient);
        attributes.width = getWith();
        attributes.height = -1;
        window.setWindowAnimations(R.style.dialog_anim_style);
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.gravity = TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.START : GravityCompat.END;
        attributes2.width = (getResources().getDisplayMetrics().widthPixels * 2) / 3;
        window.setAttributes(attributes2);
        hideNavBar(window);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(view);
        h27.c().b(this, 1004);
        getDialog().setCanceledOnTouchOutside(true);
    }

    public void showListDialog(Context context, String str) {
        ((AppCompatActivity) context).getSupportFragmentManager().beginTransaction().add(this, str).commitAllowingStateLoss();
    }
}
