package com.transsion.playercommon.gallery;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.yalantis.gallery.dbhelper.entity.LocalMediaFolder;
import java.util.ArrayList;
import java.util.List;

public class ImageFolderFragment extends BaseFragment {
    public ImageViewModel l;
    public RecyclerView n;
    public ImageFolderAdapter o;
    public View p;
    public List m = new ArrayList();
    public int q = 1;

    public class a implements BaseQuickAdapter.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            LocalMediaFolder localMediaFolder = (LocalMediaFolder) ImageFolderFragment.this.m.get(i);
            Intent intent = new Intent(((BaseFragment) ImageFolderFragment.this).mActivity, (Class<?>) ImageFolderActivity.class);
            intent.putExtra("bucket_id", localMediaFolder.getBucketId());
            intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, 40);
            intent.putExtra("crop_type", ImageFolderFragment.this.q);
            ((BaseFragment) ImageFolderFragment.this).mActivity.startActivityForResult(intent, 69);
        }
    }

    public class b implements Observer {
        public b() {
        }

        @Override
        public void onChanged(List list) {
            ImageFolderFragment.this.m.clear();
            ImageFolderFragment.this.m.addAll(list);
            ImageFolderFragment.this.o.setNewData(ImageFolderFragment.this.m);
        }
    }

    private void U() {
        this.n.setLayoutManager(new LinearLayoutManager(this.mContext));
        ImageFolderAdapter imageFolderAdapter = new ImageFolderAdapter();
        this.o = imageFolderAdapter;
        this.n.setAdapter(imageFolderAdapter);
        this.o.setOnItemClickListener(new a());
    }

    public static ImageFolderFragment V(int i) {
        ImageFolderFragment imageFolderFragment = new ImageFolderFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("crop_type", i);
        imageFolderFragment.setArguments(bundle);
        return imageFolderFragment;
    }

    private void initView(View view) {
        this.n = (RecyclerView) view.findViewById(R.id.rv_folders);
    }

    private void initViewModel() {
        ImageViewModel imageViewModel = (ImageViewModel) new ViewModelProvider(this, ViewModelProvider.AndroidViewModelFactory.getInstance(this.mActivity.getApplication())).get(ImageViewModel.class);
        this.l = imageViewModel;
        imageViewModel.f().observe(this.mActivity, new b());
        this.l.l(this.mContext);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (getArguments() != null) {
            this.q = getArguments().getInt("crop_type");
        }
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image_folder, viewGroup, false);
        this.p = viewInflate;
        return viewInflate;
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l.l(this.mContext);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(view);
        initViewModel();
        U();
    }
}
