package com.cloud.tmc.miniapp.ui;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.callback.OnPhotoSelectListener;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.StatusAction;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import com.cloud.tmc.miniapp.dialog.OooO0O0;
import com.cloud.tmc.miniapp.dialog.o00Oo0;
import com.cloud.tmc.miniapp.dialog.o00Ooo;
import com.cloud.tmc.miniapp.dialog.oo000o;
import com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.OooO;
import com.cloud.tmc.miniapp.widget.OooO00o;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniutils.util.ViewUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

@SourceDebugExtension
public final class ImageSelectActivity extends BaseActivity implements StatusAction, Runnable, BaseAdapter.OnItemClickListener, BaseAdapter.OnChildClickListener {
    private static final String IMAGE_MAX_SELECT = "maxSelect";
    private static final String IMAGE_SELECT_LIST = "imageList";
    public static final int SELECT_MODE_MULTIPLE = 2;
    public static final int SELECT_MODE_PREVIEW = 3;
    public static final int SELECT_MODE_SINGLE = 1;
    private final ImageSelectAdapter adapter;
    private o00Ooo albumDialog;
    private final ConcurrentHashMap<String, List<String>> allAlbum;
    private final ArrayList<String> allImage;
    private final ArrayList<String> selectImage;
    private final ArrayList<Integer> selectPosition;
    private final ArrayList<String> tempData;
    public static final Companion Companion = new Companion(null);
    private static int selectMode = 1;
    private final Lazy flTitleBack$delegate = LazyKt.b(new Function0<FrameLayout>() {
        {
            super(0);
        }

        @Override
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_title_back);
        }
    });
    private final Lazy tvTitle$delegate = LazyKt.b(new Function0<TextView>() {
        {
            super(0);
        }

        @Override
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_title);
        }
    });
    private final Lazy ivImageSelect$delegate = LazyKt.b(new Function0<AppCompatImageView>() {
        {
            super(0);
        }

        @Override
        public final AppCompatImageView invoke() {
            return (AppCompatImageView) this.this$0.findViewById(R.id.iv_image_select);
        }
    });
    private final Lazy slImageSelectStatus$delegate = LazyKt.b(new Function0<StatusLayout>() {
        {
            super(0);
        }

        @Override
        public final StatusLayout invoke() {
            return (StatusLayout) this.this$0.findViewById(R.id.sl_image_select_status);
        }
    });
    private final Lazy rvImageSelectList$delegate = LazyKt.b(new Function0<RecyclerView>() {
        {
            super(0);
        }

        @Override
        public final RecyclerView invoke() {
            return (RecyclerView) this.this$0.findViewById(R.id.rv_image_select_list);
        }
    });
    private final Lazy llAlbumSelect$delegate = LazyKt.b(new Function0<LinearLayoutCompat>() {
        {
            super(0);
        }

        @Override
        public final LinearLayoutCompat invoke() {
            return (LinearLayoutCompat) this.this$0.findViewById(R.id.ll_album_select);
        }
    });
    private final Lazy tvImageSelect$delegate = LazyKt.b(new Function0<TextView>() {
        {
            super(0);
        }

        @Override
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_image_select);
        }
    });
    private int maxSelect = 1;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getSelectMode() {
            return ImageSelectActivity.selectMode;
        }

        public final void launch(BaseActivity activity, OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(activity, "activity");
            launch(activity, 1, onPhotoSelectListener);
        }

        public final void setSelectMode(int i10) {
            ImageSelectActivity.selectMode = i10;
        }

        private Companion() {
        }

        public final void launch(BaseActivity activity, int i10, final OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(activity, "activity");
            if (i10 < 1) {
                TmcLogger.d("最少要选择一个图片");
                return;
            }
            Intent intent = new Intent(activity, (Class<?>) ImageSelectActivity.class);
            intent.putExtra(ImageSelectActivity.IMAGE_MAX_SELECT, i10);
            setSelectMode(i10 != 1 ? 2 : 1);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, activity);
            activity.startActivityForResult(intent, new BaseActivity.OnActivityCallback() {
                @Override
                public void onActivityResult(int i11, Intent intent2) {
                    OnPhotoSelectListener onPhotoSelectListener2 = onPhotoSelectListener;
                    if (onPhotoSelectListener2 == null) {
                        return;
                    }
                    if (intent2 == null) {
                        onPhotoSelectListener2.onCancel();
                        return;
                    }
                    ArrayList<String> stringArrayListExtra = intent2.getStringArrayListExtra("imageList");
                    if (stringArrayListExtra == null || stringArrayListExtra.isEmpty()) {
                        onPhotoSelectListener.onCancel();
                        return;
                    }
                    Iterator<String> it = stringArrayListExtra.iterator();
                    Intrinsics.g(it, "list.iterator()");
                    while (it.hasNext()) {
                        if (!new File(it.next()).isFile()) {
                            it.remove();
                        }
                    }
                    if (i11 != -1 || stringArrayListExtra.isEmpty()) {
                        onPhotoSelectListener.onCancel();
                    } else {
                        onPhotoSelectListener.onSelected(stringArrayListExtra);
                    }
                }
            });
        }
    }

    public ImageSelectActivity() {
        ArrayList<String> arrayList = new ArrayList<>();
        this.selectImage = arrayList;
        this.selectPosition = new ArrayList<>();
        this.allImage = new ArrayList<>();
        this.allAlbum = new ConcurrentHashMap<>();
        this.adapter = new ImageSelectAdapter(this, arrayList);
        this.tempData = new ArrayList<>();
    }

    public final void changeSelectTv() {
        String string;
        if (this.selectImage.isEmpty()) {
            TextView tvImageSelect = getTvImageSelect();
            if (tvImageSelect != null) {
                tvImageSelect.setText(getString(R.string.mini_image_select_done));
            }
            TextView tvImageSelect2 = getTvImageSelect();
            if (tvImageSelect2 != null) {
                tvImageSelect2.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_505358));
                return;
            }
            return;
        }
        TextView tvImageSelect3 = getTvImageSelect();
        if (tvImageSelect3 != null) {
            if (this.maxSelect == 1) {
                string = getString(R.string.mini_image_select_done);
            } else {
                try {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                    String string2 = getString(R.string.mini_image_select_mutiple_done);
                    Intrinsics.g(string2, "getString(R.string.mini_image_select_mutiple_done)");
                    string = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.selectImage.size()), String.valueOf(this.maxSelect)}, 2));
                    Intrinsics.g(string, "format(format, *args)");
                } catch (Throwable unused) {
                    string = "";
                }
            }
            tvImageSelect3.setText(string);
        }
        TextView tvImageSelect4 = getTvImageSelect();
        if (tvImageSelect4 != null) {
            tvImageSelect4.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_white));
        }
    }

    private final FrameLayout getFlTitleBack() {
        return (FrameLayout) this.flTitleBack$delegate.getValue();
    }

    private final AppCompatImageView getIvImageSelect() {
        return (AppCompatImageView) this.ivImageSelect$delegate.getValue();
    }

    private final LinearLayoutCompat getLlAlbumSelect() {
        return (LinearLayoutCompat) this.llAlbumSelect$delegate.getValue();
    }

    private final String getLocalLanguage(String str) {
        String string;
        try {
            if (StringsKt.H(str, "pictures", true)) {
                string = getString(R.string.image_select_album_pictures);
            } else if (StringsKt.H(str, "screenshot", true)) {
                string = getString(R.string.image_select_album_screenshot);
            } else {
                string = StringsKt.H(str, "camera", true) ? getString(R.string.image_select_album_camera) : str;
            }
            Intrinsics.g(string, "{\n            when {\n   …}\n            }\n        }");
            return string;
        } catch (Throwable unused) {
            return str;
        }
    }

    public final RecyclerView getRvImageSelectList() {
        return (RecyclerView) this.rvImageSelectList$delegate.getValue();
    }

    private final StatusLayout getSlImageSelectStatus() {
        return (StatusLayout) this.slImageSelectStatus$delegate.getValue();
    }

    private final TextView getTvImageSelect() {
        return (TextView) this.tvImageSelect$delegate.getValue();
    }

    public final TextView getTvTitle() {
        return (TextView) this.tvTitle$delegate.getValue();
    }

    public static final void initData$lambda$1(ImageSelectActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.run();
        } catch (Throwable unused) {
        }
    }

    private final void jumpPreviewActivity(int i10) {
        ImagePreviewActivity.Companion.launch(this, this.maxSelect, CollectionsKt.U0(this.adapter.getData()), i10, this.selectImage, this.selectPosition, new OnPhotoSelectListener() {
            @Override
            public void onCancel() {
                OnPhotoSelectListener.DefaultImpls.onCancel(this);
            }

            @Override
            public void onDialogClickCancel() {
                OnPhotoSelectListener.DefaultImpls.onDialogClickCancel(this);
            }

            @Override
            public void onSelected(ArrayList<String> data) {
                Intrinsics.h(data, "data");
            }

            @Override
            public void onSelected(ArrayList<String> data, ArrayList<Integer> arrayList, boolean z10) {
                Intrinsics.h(data, "data");
                if (z10) {
                    Intent intent = new Intent();
                    intent.putStringArrayListExtra(ImageSelectActivity.IMAGE_SELECT_LIST, data);
                    ImageSelectActivity.this.setResult(-1, intent);
                    ImageSelectActivity.this.finish();
                    return;
                }
                ImageSelectActivity.this.selectImage.clear();
                ImageSelectActivity.this.selectImage.addAll(data);
                if (arrayList != null) {
                    ImageSelectActivity imageSelectActivity = ImageSelectActivity.this;
                    imageSelectActivity.selectPosition.clear();
                    imageSelectActivity.selectPosition.addAll(arrayList);
                }
                ImageSelectActivity.this.changeSelectTv();
                ImageSelectActivity.this.adapter.notifyDataSetChanged();
            }

            @Override
            public void onAuthorized(boolean z10) {
            }
        });
    }

    private final void notifyImageListView() {
        try {
            post(new Runnable() {
                @Override
                public final void run() {
                    ImageSelectActivity.notifyImageListView$lambda$4(this.f23041a);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static final void notifyImageListView$lambda$4(ImageSelectActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            this$0.allImage.addAll(this$0.tempData);
            this$0.adapter.setData(this$0.allImage);
            this$0.tempData.clear();
            this$0.changeSelectTv();
            RecyclerView rvImageSelectList = this$0.getRvImageSelectList();
            if (rvImageSelectList != null) {
                rvImageSelectList.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(this$0.getActivity(), R.anim.layout_fall_down));
            }
            RecyclerView rvImageSelectList2 = this$0.getRvImageSelectList();
            if (rvImageSelectList2 != null) {
                rvImageSelectList2.scheduleLayoutAnimation();
            }
            if (this$0.allImage.isEmpty()) {
                this$0.showPhotoEmpty(R.drawable.mini_ic_photo_empty, R.string.status_empty_photo, null);
            } else {
                this$0.showComplete();
            }
        } catch (Throwable unused) {
        }
    }

    public static final void run$lambda$2(ImageSelectActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.adapter.addData(this$0.tempData);
    }

    public static final void run$lambda$3(ImageSelectActivity this$0, Ref.BooleanRef finishLoad) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(finishLoad, "$finishLoad");
        if (this$0.allImage.isEmpty()) {
            finishLoad.element = true;
            this$0.notifyImageListView();
        } else {
            this$0.adapter.addData(this$0.tempData);
            this$0.tempData.clear();
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.activity_image_select;
    }

    @Override
    public StatusLayout getStatusLayout() {
        return getSlImageSelectStatus();
    }

    public final ArrayList<String> getTempData() {
        return this.tempData;
    }

    @Override
    public Integer getViewThemeMode() {
        return 1;
    }

    @Override
    public void initData() {
        TextView tvImageSelect;
        this.maxSelect = getInt(IMAGE_MAX_SELECT, this.maxSelect);
        this.adapter.setSelectMode(selectMode);
        if (this.maxSelect == 1 && (tvImageSelect = getTvImageSelect()) != null) {
            tvImageSelect.setVisibility(4);
        }
        try {
            ScheduledThreadPoolExecutor scheduledExecutor = ExecutorUtils.getScheduledExecutor();
            if (scheduledExecutor != null) {
                scheduledExecutor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        ImageSelectActivity.initData$lambda$1(this.f23069a);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e("ImageSelectActivity", th2);
        }
    }

    @Override
    public void initView() {
        MiniBarUtils.setStatusBarNightMode(this);
        FrameLayout flTitleBack = getFlTitleBack();
        if (flTitleBack != null) {
            flTitleBack.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        AppCompatImageView ivImageSelect = getIvImageSelect();
        if (ivImageSelect != null) {
            ivImageSelect.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        setOnClickListener(getFlTitleBack(), getLlAlbumSelect(), getTvImageSelect());
        this.adapter.setOnItemClickListener(this);
        this.adapter.setOnChildClickListener(R.id.fl_image_select_check, this);
        RecyclerView rvImageSelectList = getRvImageSelectList();
        if (rvImageSelectList != null) {
            rvImageSelectList.setAdapter(this.adapter);
            rvImageSelectList.addItemDecoration(new OooO00o((int) getResources().getDimension(R.dimen.mini_dp_3)));
        }
    }

    @Override
    public boolean isLoadStatusLoadingOrError() {
        return StatusAction.DefaultImpls.isLoadStatusLoadingOrError(this);
    }

    @Override
    public void onBackPressed() {
        setResult(-1, new Intent());
        finish();
    }

    @Override
    public void onChildClick(RecyclerView recyclerView, View view, int i10) {
        int i11 = 0;
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        if (selectMode == 1) {
            jumpPreviewActivity(i10);
            return;
        }
        if (view == null || view.getId() != R.id.fl_image_select_check) {
            return;
        }
        String item = this.adapter.getItem(i10);
        if (!new File(item).isFile()) {
            this.adapter.removeItem(i10);
            String string = getResources().getString(R.string.image_select_error);
            Intrinsics.g(string, "resources.getString(R.string.image_select_error)");
            OooO.OooO0O0(string);
            return;
        }
        int iIndexOf = this.selectImage.indexOf(item);
        if (iIndexOf >= 0) {
            this.selectPosition.remove(Integer.valueOf(i10));
            this.selectImage.remove(item);
            changeSelectTv();
            this.adapter.notifyItemChanged(i10);
            for (Object obj : this.selectPosition) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                int iIntValue = ((Number) obj).intValue();
                if (i11 >= iIndexOf) {
                    this.adapter.notifyItemChanged(iIntValue);
                }
                i11 = i12;
            }
            return;
        }
        if (this.selectImage.size() < this.maxSelect) {
            if (this.selectImage.size() < this.maxSelect) {
                this.selectImage.add(item);
                this.selectPosition.add(Integer.valueOf(i10));
                changeSelectTv();
            }
            this.adapter.notifyItemChanged(i10);
            return;
        }
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string2 = getResources().getString(R.string.image_select_max_hint);
            Intrinsics.g(string2, "resources.getString(R.st…ng.image_select_max_hint)");
            String str = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.maxSelect)}, 1));
            Intrinsics.g(str, "format(format, *args)");
            OooO.OooO00o(str);
        } catch (Throwable unused) {
        }
    }

    @Override
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        super.onClick(view);
        if (Intrinsics.c(view, getTvImageSelect())) {
            ArrayList<String> arrayList = this.selectImage;
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            setResult(-1, new Intent().putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage));
            finish();
            return;
        }
        if (Intrinsics.c(view, getFlTitleBack())) {
            setResult(-1, new Intent());
            finish();
            return;
        }
        if (!Intrinsics.c(view, getLlAlbumSelect()) || this.allImage.isEmpty()) {
            return;
        }
        ArrayList data = new ArrayList(this.allAlbum.size() + 1);
        Set<String> setKeySet = this.allAlbum.keySet();
        Intrinsics.g(setKeySet, "allAlbum.keys");
        int size = 0;
        for (String str : setKeySet) {
            List<String> list = this.allAlbum.get(str);
            if (list != null && !list.isEmpty()) {
                size += list.size();
                String str2 = list.get(0);
                String localLanguage = getLocalLanguage(str);
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                String string = getString(R.string.image_select_total);
                Intrinsics.g(string, "getString(R.string.image_select_total)");
                String str3 = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(list.size())}, 1));
                Intrinsics.g(str3, "format(format, *args)");
                data.add(new o00Oo0(str2, localLanguage, str, str3, this.adapter.getData() == list));
            }
        }
        String str4 = this.allImage.get(0);
        Intrinsics.g(str4, "allImage[0]");
        String str5 = str4;
        String string2 = getString(R.string.image_select_all);
        Intrinsics.g(string2, "getString(R.string.image_select_all)");
        String string3 = getString(R.string.image_select_all);
        Intrinsics.g(string3, "getString(R.string.image_select_all)");
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
        String string4 = getString(R.string.image_select_total);
        Intrinsics.g(string4, "getString(R.string.image_select_total)");
        String str6 = String.format(string4, Arrays.copyOf(new Object[]{String.valueOf(size)}, 1));
        Intrinsics.g(str6, "format(format, *args)");
        data.add(0, new o00Oo0(str5, string2, string3, str6, this.adapter.getData() == this.allImage));
        if (this.albumDialog == null) {
            o00Ooo o00ooo = new o00Ooo(this);
            o00ooo.OooO00o = new oo000o() {
                @Override
                public void onSelected(OooO0O0 oooO0O0, int i10, o00Oo0 bean) {
                    Intrinsics.h(bean, "bean");
                    TextView tvTitle = ImageSelectActivity.this.getTvTitle();
                    if (tvTitle != null) {
                        tvTitle.setText(bean.OooO0O0);
                    }
                    RecyclerView rvImageSelectList = ImageSelectActivity.this.getRvImageSelectList();
                    if (rvImageSelectList != null) {
                        rvImageSelectList.scrollToPosition(0);
                    }
                    if (i10 == 0) {
                        ImageSelectActivity.this.adapter.setData(ImageSelectActivity.this.allImage);
                    } else {
                        ImageSelectActivity.this.adapter.setData((List) ImageSelectActivity.this.allAlbum.get(bean.OooO0OO));
                    }
                    RecyclerView rvImageSelectList2 = ImageSelectActivity.this.getRvImageSelectList();
                    if (rvImageSelectList2 != null) {
                        rvImageSelectList2.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(ImageSelectActivity.this.getActivity(), R.anim.layout_from_right));
                    }
                    RecyclerView rvImageSelectList3 = ImageSelectActivity.this.getRvImageSelectList();
                    if (rvImageSelectList3 != null) {
                        rvImageSelectList3.scheduleLayoutAnimation();
                    }
                }
            };
            this.albumDialog = o00ooo;
        }
        o00Ooo o00ooo2 = this.albumDialog;
        if (o00ooo2 != null) {
            Intrinsics.h(data, "data");
            o00ooo2.OooO0OO.setData(data);
            int size2 = data.size();
            for (int i10 = 0; i10 < size2; i10++) {
                if (((o00Oo0) data.get(i10)).OooO0o0) {
                    RecyclerView recyclerView = (RecyclerView) o00ooo2.OooO0O0.getValue();
                    if (recyclerView == null) {
                        break;
                    }
                    recyclerView.scrollToPosition(i10);
                    break;
                }
            }
            o00ooo2.show();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onItemClick(RecyclerView recyclerView, View view, int i10) {
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        jumpPreviewActivity(i10);
    }

    @Override
    public void onRestart() {
        super.onRestart();
        Iterator<String> it = this.selectImage.iterator();
        Intrinsics.g(it, "selectImage.iterator()");
        while (it.hasNext()) {
            String next = it.next();
            File file = new File(next);
            if (!file.isFile()) {
                it.remove();
                this.allImage.remove(next);
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    List<String> list = this.allAlbum.get(parentFile.getName());
                    if (list != null) {
                        list.remove(next);
                    }
                    this.adapter.notifyDataSetChanged();
                    changeSelectTv();
                }
            }
        }
    }

    @Override
    public void run() {
        File parentFile;
        try {
            this.allAlbum.clear();
            this.allImage.clear();
            Uri contentUri = MediaStore.Files.getContentUri("external");
            Intrinsics.g(contentUri, "getContentUri(\"external\")");
            ContentResolver contentResolver = getContentResolver();
            Intrinsics.g(contentResolver, "contentResolver");
            Cursor cursorQuery = contentResolver.query(contentUri, new String[]{"_id", "_data", "_display_name", "date_modified", "mime_type", "width", "height", "_size"}, "(media_type=?) AND _size>0", new String[]{"1"}, "date_modified DESC");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int columnIndex = cursorQuery.getColumnIndex("_data");
                int columnIndex2 = cursorQuery.getColumnIndex("mime_type");
                int columnIndex3 = cursorQuery.getColumnIndex("_size");
                int i10 = 0;
                do {
                    if (cursorQuery.getLong(columnIndex3) >= 1024) {
                        String string = cursorQuery.getString(columnIndex2);
                        Intrinsics.g(string, "cursor.getString(mimeTypeIndex)");
                        String string2 = cursorQuery.getString(columnIndex);
                        Intrinsics.g(string2, "cursor.getString(pathIndex)");
                        if (!TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string)) {
                            File file = new File(string2);
                            if (file.exists() && file.isFile() && (parentFile = file.getParentFile()) != null) {
                                String name = parentFile.getName();
                                Intrinsics.g(name, "parentFile.name");
                                List<String> arrayList = this.allAlbum.get(name);
                                if (arrayList == null) {
                                    arrayList = new ArrayList<>();
                                    this.allAlbum.put(name, arrayList);
                                }
                                arrayList.add(string2);
                                this.tempData.add(string2);
                                i10++;
                                if (i10 == 50) {
                                    booleanRef.element = true;
                                    notifyImageListView();
                                } else if (i10 % 100 == 0) {
                                    post(new Runnable() {
                                        @Override
                                        public final void run() {
                                            ImageSelectActivity.run$lambda$2(this.f23033a);
                                        }
                                    });
                                    this.tempData.clear();
                                }
                            }
                        }
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
            }
            if (!this.tempData.isEmpty()) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        ImageSelectActivity.run$lambda$3(this.f23037a, booleanRef);
                    }
                });
            }
            if (booleanRef.element) {
                return;
            }
            notifyImageListView();
        } catch (Throwable unused) {
        }
    }

    @Override
    public void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel loadingAnimationModel) {
        StatusAction.DefaultImpls.setLoadingProgressConfig(this, loadingAnimationModel);
    }

    @Override
    public boolean showComplete() {
        return StatusAction.DefaultImpls.showComplete(this);
    }

    @Override
    public void showCustomErrorLayout(String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showCustomErrorLayout(this, str, str2, str3, oooO0O0, str4, oooO00o);
    }

    @Override
    public void showError(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showError(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void showErrorLayout(int i10, int i11, int i12, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i10, i11, i12, oooO0O0, z10, z11, oooO00o);
    }

    @Override
    public void showLoading() {
        StatusAction.DefaultImpls.showLoading(this);
    }

    @Override
    public void showLoadingLogo(String str, String str2) {
        StatusAction.DefaultImpls.showLoadingLogo(this, str, str2);
    }

    @Override
    public void showMainLayoutAlpha(float f10) {
        StatusAction.DefaultImpls.showMainLayoutAlpha(this, f10);
    }

    @Override
    public void showNoNetwork(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showNoNetwork(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void showPhotoEmpty(int i10, int i11, StatusLayout.OooO0O0 oooO0O0) {
        StatusAction.DefaultImpls.showPhotoEmpty(this, i10, i11, oooO0O0);
    }

    @Override
    public void showUnstableNetwork(StatusLayout.OooO0O0 oooO0O0, int i10, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showUnstableNetwork(this, oooO0O0, i10, str, str2, oooO00o);
    }

    @Override
    public void statusLayoutCreateShortCutsSuccess(String str, Function3<? super String, ? super String, ? super String, Unit> function3) {
        StatusAction.DefaultImpls.statusLayoutCreateShortCutsSuccess(this, str, function3);
    }

    @Override
    public void statusLayoutOnResume() {
        StatusAction.DefaultImpls.statusLayoutOnResume(this);
    }

    @Override
    public void updateStepAnimation(LoadStepAction loadStepAction) {
        StatusAction.DefaultImpls.updateStepAnimation(this, loadStepAction);
    }

    @Override
    public void showErrorLayout(int i10, int i11, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i10, i11, oooO0O0, str, oooO00o);
    }

    @Override
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, oooO0O0, str, oooO00o);
    }

    @Override
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, charSequence2, oooO0O0, str, z10, z11, oooO00o);
    }

    @Override
    public void hideStatusLoading() {
    }

    @Override
    public void showStatusLoading() {
    }
}
