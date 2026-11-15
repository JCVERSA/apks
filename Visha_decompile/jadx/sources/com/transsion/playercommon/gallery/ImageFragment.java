package com.transsion.playercommon.gallery;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.yalantis.gallery.dbhelper.entity.LocalMedia;
import defpackage.h27;
import defpackage.mfb;
import defpackage.ne6;
import java.util.ArrayList;
import java.util.List;

public class ImageFragment extends BaseFragment implements View.OnClickListener {
    public ImageViewModel o;
    public RecyclerView q;
    public ImageAdapter r;
    public LinearLayout s;
    public ImageView t;
    public View u;
    public long l = -1;
    public int m = 40;
    public int n = 1;
    public List p = new ArrayList();

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(ne6 ne6Var) {
            ImageFragment.this.p.clear();
            ImageFragment.this.p.addAll(ne6Var.b);
            h27.c().e(1094, Boolean.valueOf(ImageFragment.this.p.size() == 0));
            ImageFragment.this.r.setNewData(ImageFragment.this.p);
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public b() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            new mfb(((BaseFragment) ImageFragment.this).mContext, ImageFragment.this.n == 1).p(Uri.parse(((LocalMedia) ImageFragment.this.p.get(i)).getPath()));
        }
    }

    private void T() {
        this.q.setLayoutManager(new GridLayoutManager(this.mContext, 3));
        ImageAdapter imageAdapter = new ImageAdapter();
        this.r = imageAdapter;
        this.q.setAdapter(imageAdapter);
        this.r.setOnItemClickListener(new b());
        this.q.addItemDecoration(new ImageAdapter.GridSpaceItemDecoration(3, com.transsion.utils.a.d(this.mContext, 2.0f)));
    }

    public static ImageFragment U(int i, long j, int i2) {
        ImageFragment imageFragment = new ImageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, i);
        bundle.putLong("bucket_id", j);
        bundle.putInt("crop_type", i2);
        imageFragment.setArguments(bundle);
        return imageFragment;
    }

    private void initTitle() {
        this.s.setVisibility(this.m == 39 ? 8 : 0);
    }

    private void initView(View view) {
        this.q = (RecyclerView) view.findViewById(R.id.rv_image);
        this.s = (LinearLayout) view.findViewById(R.id.ll_title);
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_close);
        this.t = imageView;
        imageView.setOnClickListener(this);
    }

    private void initViewModel() {
        ImageViewModel imageViewModel = (ImageViewModel) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(this.mActivity.getApplication())).get(ImageViewModel.class);
        this.o = imageViewModel;
        imageViewModel.e().observe(this.mActivity, new a());
        this.o.k(this.mContext, this.l, true);
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.iv_close) {
            this.mActivity.finish();
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.l = arguments.getLong("bucket_id", -1L);
            this.m = arguments.getInt(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 40);
            this.n = arguments.getInt("crop_type", 1);
        }
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image, viewGroup, false);
        this.u = viewInflate;
        return viewInflate;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.o.e().removeObservers(this.mActivity);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.o.k(this.mContext, this.l, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(view);
        initViewModel();
        T();
        initTitle();
    }
}
