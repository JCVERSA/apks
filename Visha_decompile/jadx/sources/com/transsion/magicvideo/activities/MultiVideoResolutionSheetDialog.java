package com.transsion.magicvideo.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.MultiVideoResolutionSheetDialog;
import com.transsion.magicvideo.adapter.DownloadChoiceAdapter;
import com.transsion.magicvideo.data.DownloadMediaItem;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BadgeView;
import defpackage.b39;
import defpackage.e16;
import defpackage.nr9;
import defpackage.p06;
import defpackage.r0a;
import defpackage.ym1;
import java.util.ArrayList;

public class MultiVideoResolutionSheetDialog extends RxPermissionOSBottomSheetDialog {
    public int[] N;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            MultiVideoResolutionSheetDialog.this.finish();
        }
    }

    public static void m0(Button button, int i) {
        button.setEnabled(i != 0);
    }

    public static void p0(Context context, int[] iArr) {
        Intent intent = new Intent(context, (Class<?>) MultiVideoResolutionSheetDialog.class);
        intent.putExtra("endPosition", iArr);
        context.startActivity(intent);
    }

    @Override
    public void initView() {
        this.N = getIntent().getIntArrayExtra("endPosition");
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_for_sniff_multi_resolution_download, (ViewGroup) null);
        addPage(viewInflate).setTitleLayoutVisible(false);
        o0(viewInflate);
    }

    public final void j0(DownloadChoiceAdapter downloadChoiceAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        n0(downloadChoiceAdapter, view, i, false);
    }

    public final void k0(DownloadChoiceAdapter downloadChoiceAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        n0(downloadChoiceAdapter, view, i, true);
    }

    public final void l0(DownloadChoiceAdapter downloadChoiceAdapter, DownloadMediaItem downloadMediaItem, View view) {
        ArrayList arrayListJ = downloadChoiceAdapter.j();
        if (arrayListJ == null || arrayListJ.size() <= 0) {
            return;
        }
        DownloadMediaItem.mediaItemDownloadChoice mediaitemdownloadchoice = (DownloadMediaItem.mediaItemDownloadChoice) arrayListJ.get(0);
        nr9.a aVarC = nr9.b().c();
        if (aVarC != null) {
            ym1.b = true;
            boolean zA = aVarC.a(mediaitemdownloadchoice.getUrl(), downloadMediaItem.getImgUrl(), downloadMediaItem.getmTitle(), mediaitemdownloadchoice.getSize(), mediaitemdownloadchoice.getMimeType());
            if (b39.a(this) != BaseConstant.SCREEN_TYPE.FOLD) {
                finish();
            } else if (zA && this.N != null) {
                r0(this, view.getRootView(), new a());
            }
            ym1.b = false;
        }
        p06.Y(downloadMediaItem.getImgUrl() == null, mediaitemdownloadchoice.getResolutionRadio(), mediaitemdownloadchoice.getSize(), mediaitemdownloadchoice.getMimeType(), mediaitemdownloadchoice.getUrl());
    }

    public final void n0(DownloadChoiceAdapter downloadChoiceAdapter, View view, int i, boolean z) {
        if (downloadChoiceAdapter.getData().size() == 0) {
            return;
        }
        downloadChoiceAdapter.k(downloadChoiceAdapter.getData().get(i), z == ((CheckBox) view.findViewById(R.id.cb_choice)).isChecked(), i);
    }

    public final void o0(View view) {
        final DownloadMediaItem downloadMediaItemA = nr9.b().a();
        if (downloadMediaItemA == null) {
            Log.e("MultiVideoResolutionSheetDialog", "no downloadMediaItem");
            return;
        }
        e16.e = !r0a.g(downloadMediaItemA.getImgUrl()) ? 1 : 0;
        final DownloadChoiceAdapter downloadChoiceAdapter = new DownloadChoiceAdapter();
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.rv_choice_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(downloadChoiceAdapter);
        downloadChoiceAdapter.setNewData(downloadMediaItemA.getList());
        downloadChoiceAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.j0(downloadChoiceAdapter, baseQuickAdapter, view2, i);
            }
        });
        downloadChoiceAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.k0(downloadChoiceAdapter, baseQuickAdapter, view2, i);
            }
        });
        final Button button = (Button) view.findViewById(R.id.dialog_download);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.l0(downloadChoiceAdapter, downloadMediaItemA, view2);
            }
        });
        downloadChoiceAdapter.setOnSelectListener(new DownloadChoiceAdapter.c() {
            @Override
            public final void b(int i) {
                MultiVideoResolutionSheetDialog.m0(button, i);
            }
        });
        downloadChoiceAdapter.k(downloadMediaItemA.getList().get(0), true, 0);
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_media_item);
        if (!r0a.g(downloadMediaItemA.getImgUrl())) {
            Glide.with((FragmentActivity) this).asBitmap().load(downloadMediaItemA.getImgUrl()).into(imageView);
        }
        ((TextView) view.findViewById(R.id.tv_title)).setText(downloadMediaItemA.getTitle());
    }

    public final void q0(Context context, int[] iArr, int[] iArr2, AnimatorListenerAdapter animatorListenerAdapter) {
        BadgeView badgeView = new BadgeView(context);
        badgeView.setRedPointType(3);
        badgeView.setNum(1);
        ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
        int paddingTop = viewGroup.getPaddingTop();
        iArr[1] = iArr[1] - paddingTop;
        iArr2[1] = iArr2[1] - paddingTop;
        ym1.b(viewGroup, badgeView, iArr, iArr2, true, animatorListenerAdapter);
    }

    public final void r0(Context context, View view, AnimatorListenerAdapter animatorListenerAdapter) {
        int[] iArr = new int[2];
        View viewFindViewById = view.findViewById(R.id.iv_media_item);
        if (viewFindViewById != null) {
            int width = viewFindViewById.getWidth();
            int height = viewFindViewById.getHeight();
            viewFindViewById.getLocationInWindow(iArr);
            iArr[0] = iArr[0] + (width / 2);
            iArr[1] = iArr[1] + (height / 2);
        }
        int[] iArr2 = this.N;
        q0(context, iArr, new int[]{iArr2[0], iArr2[1]}, animatorListenerAdapter);
    }
}
