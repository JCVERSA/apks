package com.cloud.tmc.miniapp.ui;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.cloud.tmc.integration.callback.ISaveImgCallback;
import com.cloud.tmc.integration.callback.OnPhotoSelectListener;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.integration.utils.ImageSaveUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.integration.utils.share.OnShareListener;
import com.cloud.tmc.integration.utils.share.ShareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import com.cloud.tmc.miniapp.task.OooO00o;
import com.cloud.tmc.miniapp.task.OooO0O0;
import com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.cloud.tmc.miniapp.widget.OooO;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.BarUtils;
import com.cloud.tmc.miniutils.util.ImageUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.cloud.tmc.miniutils.util.ScreenUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

@SourceDebugExtension
public final class ImagePreviewActivity extends BaseActivity implements BaseAdapter.OnItemClickListener, BaseAdapter.OnChildClickListener {
    public static final Companion Companion = new Companion(null);
    private static final String IMAGE_LIST = "imageList";
    private static final String IMAGE_MAX_SELECT = "imageMaxSelect";
    private static final String IMAGE_PREVIEW_CURRENT = "current";
    private static final String IMAGE_PREVIEW_SHOW_MENU = "showMenu";
    private static final String IMAGE_SELECT_BACK_PRESSED = "imageBackPressed";
    private static final String IMAGE_SELECT_INDEX = "imageIndex";
    private static final String IMAGE_SELECT_LIST = "imageSelectList";
    private static final String IMAGE_SELECT_POSITION_LIST = "imageSelectPositionList";
    private static final String TAG = "ImagePreviewActivity";
    private int index;
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
    private final Lazy tvPreviewTitle$delegate = LazyKt.b(new Function0<TextView>() {
        {
            super(0);
        }

        @Override
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_preview_title);
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
    private final Lazy vpPreviewImage$delegate = LazyKt.b(new Function0<ViewPager2>() {
        {
            super(0);
        }

        @Override
        public final ViewPager2 invoke() {
            return (ViewPager2) this.this$0.findViewById(R.id.vp_preview_image);
        }
    });
    private final Lazy linearOperatePanel$delegate = LazyKt.b(new Function0<LinearLayout>() {
        {
            super(0);
        }

        @Override
        public final LinearLayout invoke() {
            return (LinearLayout) this.this$0.findViewById(R.id.linear_operate_panel);
        }
    });
    private final Lazy flOperateShare$delegate = LazyKt.b(new Function0<FrameLayout>() {
        {
            super(0);
        }

        @Override
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_operate_share);
        }
    });
    private final Lazy flOperateDownload$delegate = LazyKt.b(new Function0<FrameLayout>() {
        {
            super(0);
        }

        @Override
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_operate_download);
        }
    });
    private final Lazy adapter$delegate = LazyKt.b(new Function0<ImagePreviewAdapter>() {
        {
            super(0);
        }

        @Override
        public final ImagePreviewAdapter invoke() {
            ImagePreviewActivity imagePreviewActivity = this.this$0;
            return new ImagePreviewAdapter(imagePreviewActivity, imagePreviewActivity.selectImage);
        }
    });
    private int selectMode = 1;
    private final Lazy mTaskQueue$delegate = LazyKt.b(new Function0<OooO0O0>() {
        @Override
        public final OooO0O0 invoke() {
            return new OooO0O0();
        }
    });
    private int maxSelect = 1;
    private final ArrayList<String> selectImage = new ArrayList<>();
    private final ArrayList<Integer> selectPosition = new ArrayList<>();
    private final ViewPager2.OnPageChangeCallback mPageChangeCallback = new ViewPager2.OnPageChangeCallback() {
        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            this.this$0.setIndex(i10);
            TextView tvTitle = this.this$0.getTvTitle();
            if (tvTitle != null) {
                tvTitle.setText((i10 + 1) + "/" + this.this$0.getAdapter().getCount());
            }
            TextView tvPreviewTitle = this.this$0.getTvPreviewTitle();
            if (tvPreviewTitle == null) {
                return;
            }
            tvPreviewTitle.setText((i10 + 1) + "/" + this.this$0.getAdapter().getCount());
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void launch(BaseActivity context, int i10, String url, ArrayList<String> selectList, ArrayList<Integer> positionList, OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(url, "url");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(url);
            launch(context, i10, arrayList, selectList, positionList, onPhotoSelectListener);
        }

        private Companion() {
        }

        public final void launch(BaseActivity context, int i10, List<String> urls, ArrayList<String> selectList, ArrayList<Integer> positionList, OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(urls, "urls");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            launch(context, i10, urls, 0, selectList, positionList, onPhotoSelectListener);
        }

        public final void launch(BaseActivity activity, int i10, ArrayList<String> urls, boolean z10, int i11) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(urls, "urls");
            Intent intent = new Intent(activity, (Class<?>) ImagePreviewActivity.class);
            intent.putExtra(ImagePreviewActivity.IMAGE_LIST, urls);
            intent.putExtra(ImagePreviewActivity.IMAGE_MAX_SELECT, i10);
            intent.putExtra(ImagePreviewActivity.IMAGE_PREVIEW_SHOW_MENU, z10);
            intent.putExtra(ImagePreviewActivity.IMAGE_PREVIEW_CURRENT, i11);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_INDEX, i11);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, activity);
            activity.startActivity(intent);
            activity.overridePendingTransition(R.anim.activity_fast_fade_in, R.anim.activity_fast_fade_out);
        }

        public final void launch(BaseActivity context, int i10, List<String> urls, int i11, ArrayList<String> selectList, ArrayList<Integer> positionList, final OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(urls, "urls");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            if (urls.isEmpty()) {
                return;
            }
            Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
            if (urls.size() > 2000) {
                urls = CollectionsKt.e(urls.get(i11));
            }
            if (urls instanceof ArrayList) {
                intent.putExtra(ImagePreviewActivity.IMAGE_LIST, (Serializable) urls);
            } else {
                intent.putExtra(ImagePreviewActivity.IMAGE_LIST, new ArrayList(urls));
            }
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_LIST, selectList);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_INDEX, i11);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_POSITION_LIST, positionList);
            intent.putExtra(ImagePreviewActivity.IMAGE_MAX_SELECT, i10);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            context.startActivityForResult(intent, new BaseActivity.OnActivityCallback() {
                @Override
                public void onActivityResult(int i12, Intent intent2) {
                    OnPhotoSelectListener onPhotoSelectListener2 = onPhotoSelectListener;
                    if (onPhotoSelectListener2 == null) {
                        return;
                    }
                    if (intent2 == null) {
                        onPhotoSelectListener2.onCancel();
                        return;
                    }
                    ArrayList<String> stringArrayListExtra = intent2.getStringArrayListExtra("imageSelectList");
                    boolean booleanExtra = intent2.getBooleanExtra("imageBackPressed", false);
                    ArrayList<Integer> integerArrayListExtra = intent2.getIntegerArrayListExtra("imageSelectPositionList");
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
                    if (i12 != -1 || stringArrayListExtra.isEmpty()) {
                        onPhotoSelectListener.onCancel();
                    } else {
                        onPhotoSelectListener.onSelected(stringArrayListExtra, integerArrayListExtra, !booleanExtra);
                    }
                }
            });
        }
    }

    @DebugMetadata(c = "com.cloud.tmc.miniapp.ui.ImagePreviewActivity$loadFile$1", f = "ImagePreviewActivity.kt", l = {}, m = "invokeSuspend")
    public static final class C10151 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        public final Function1<File, Unit> $block;
        public final String $imagePath;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10151(String str, Function1<? super File, Unit> function1, Continuation<? super C10151> continuation) {
            super(2, continuation);
            this.$imagePath = str;
            this.$block = function1;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ImagePreviewActivity.this.new C10151(this.$imagePath, this.$block, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                File fileLoadImgFile = ImagePreviewActivity.this.getAdapter().getImageLoder().loadImgFile(ImagePreviewActivity.this, this.$imagePath);
                if (fileLoadImgFile == null) {
                    this.$block.invoke(null);
                    return Unit.f64096a;
                }
                String strD1 = StringsKt.d1(StringsKt.n1(this.$imagePath).toString(), "/", "");
                if (StringsKt.c1(strD1, '.', "").length() == 0) {
                    strD1 = "IMG_" + System.currentTimeMillis() + ".png";
                }
                File file = new File(new File(ImagePreviewActivity.this.getCacheDir(), "downloadFile"), strD1);
                if (file.exists()) {
                    FileExtKt.getDelete(file);
                }
                boolean zMoveTo$default = FileExtKt.moveTo$default(fileLoadImgFile, file, false, false, 6, null);
                Function1<File, Unit> function1 = this.$block;
                if (!zMoveTo$default) {
                    file = null;
                }
                function1.invoke(file);
                return Unit.f64096a;
            } catch (Throwable th2) {
                TmcLogger.e(ImagePreviewActivity.TAG, th2);
                this.$block.invoke(null);
            }
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10151) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final class C10161 implements OnShareListener {
        public C10161() {
        }

        public static final void onShare$lambda$0() {
            ToastUtils.showToast$default(R.string.mini_image_select_shared_success, 0, 0L, false, 14, null);
        }

        public static final void onShare$lambda$1() {
            ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
        }

        @Override
        public void onShare(int i10, int i11) {
            if (i11 == 1) {
                TmcLogger.d(ImagePreviewActivity.TAG, "Share file successfully");
                ImagePreviewActivity.this.getMTaskQueue().OooO00o(new OooO00o("share", new Runnable() {
                    @Override
                    public final void run() {
                        ImagePreviewActivity.C10161.onShare$lambda$0();
                    }
                }));
            } else {
                TmcLogger.d(ImagePreviewActivity.TAG, "Share file failed");
                ImagePreviewActivity.this.getMTaskQueue().OooO00o(new OooO00o("share", new Runnable() {
                    @Override
                    public final void run() {
                        ImagePreviewActivity.C10161.onShare$lambda$1();
                    }
                }));
            }
        }
    }

    private final void changeSelectTv() {
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
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                String string2 = getString(R.string.mini_image_select_mutiple_done);
                Intrinsics.g(string2, "getString(R.string.mini_image_select_mutiple_done)");
                string = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.selectImage.size()), String.valueOf(this.maxSelect)}, 2));
                Intrinsics.g(string, "format(format, *args)");
            }
            tvImageSelect3.setText(string);
        }
        TextView tvImageSelect4 = getTvImageSelect();
        if (tvImageSelect4 != null) {
            tvImageSelect4.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_white));
        }
    }

    private final void doDownloadFile() {
        String currentImageUrl = getCurrentImageUrl();
        if (currentImageUrl != null) {
            loadFile(currentImageUrl, new Function1<File, Unit>() {
                @Override
                public Object invoke(Object obj) {
                    invoke((File) obj);
                    return Unit.f64096a;
                }

                public final void invoke(File file) {
                    Bitmap.CompressFormat compressFormat;
                    if (file == null) {
                        TmcLogger.d(ImagePreviewActivity.TAG, "doDownloadFile file is null");
                        ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
                        return;
                    }
                    Bitmap bitmap = ImageUtils.getBitmap(file);
                    String strW = FilesKt.w(file);
                    if (Intrinsics.c(strW, "png")) {
                        compressFormat = Bitmap.CompressFormat.PNG;
                    } else if (Intrinsics.c(strW, "webp")) {
                        compressFormat = Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP;
                    } else {
                        compressFormat = Bitmap.CompressFormat.JPEG;
                    }
                    ImageSaveUtils.saveImage(bitmap, new ISaveImgCallback() {
                        @Override
                        public void onFail(int i10, String str) {
                            ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
                            TmcLogger.d(ImagePreviewActivity.TAG, i10 + " -> " + str);
                        }

                        @Override
                        public void onSuccess(File file2) {
                            ToastUtils.showToast$default(R.string.mini_image_select_save_success, 0, 0L, false, 14, null);
                        }
                    }, compressFormat);
                }
            });
        } else {
            TmcLogger.d(TAG, "doDownloadFile imagePath is null");
            ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
        }
    }

    private final void doShareFile() {
        String currentImageUrl = getCurrentImageUrl();
        if (currentImageUrl != null) {
            loadFile(currentImageUrl, new Function1<File, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((File) obj);
                    return Unit.f64096a;
                }

                public final void invoke(final File file) {
                    if (file == null) {
                        TmcLogger.d(ImagePreviewActivity.TAG, "doShareFile file is null");
                        ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
                    } else {
                        PermissionUtils permissionUtilsPermissionGroup = PermissionUtils.permissionGroup(PermissionConstants.STORAGE_WRITE);
                        final ImagePreviewActivity imagePreviewActivity = ImagePreviewActivity.this;
                        permissionUtilsPermissionGroup.callback(new PermissionUtils.SimpleCallback() {
                            @Override
                            public void onDenied() {
                                TmcLogger.d(ImagePreviewActivity.TAG, "doShareFile onDenied");
                                ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
                            }

                            @Override
                            public void onGranted() {
                                imagePreviewActivity.systemShare(file);
                            }
                        }).request();
                    }
                }
            });
        } else {
            TmcLogger.d(TAG, "doShareFile imagePath is null");
            ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
        }
    }

    public final ImagePreviewAdapter getAdapter() {
        return (ImagePreviewAdapter) this.adapter$delegate.getValue();
    }

    private final String getCurrentImageUrl() {
        String str;
        try {
            List<String> data = getAdapter().getData();
            if (this.index >= data.size() || (str = data.get(this.index)) == null) {
                return null;
            }
            if (!StringsKt.c0(str, ".miniapp.transsion.com", false, 2, null)) {
                return str;
            }
            String appIdFormVurl = FilePathUtils.INSTANCE.getAppIdFormVurl(str);
            if (appIdFormVurl == null) {
                appIdFormVurl = "";
            }
            File file = getAdapter().getBaseResourceManager().get(str, appIdFormVurl);
            if (file != null) {
                return file.getAbsolutePath();
            }
            return null;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return null;
    }

    private final FrameLayout getFlOperateDownload() {
        return (FrameLayout) this.flOperateDownload$delegate.getValue();
    }

    private final FrameLayout getFlOperateShare() {
        return (FrameLayout) this.flOperateShare$delegate.getValue();
    }

    private final FrameLayout getFlTitleBack() {
        return (FrameLayout) this.flTitleBack$delegate.getValue();
    }

    private final LinearLayout getLinearOperatePanel() {
        return (LinearLayout) this.linearOperatePanel$delegate.getValue();
    }

    public final OooO0O0 getMTaskQueue() {
        return (OooO0O0) this.mTaskQueue$delegate.getValue();
    }

    private final TextView getTvImageSelect() {
        return (TextView) this.tvImageSelect$delegate.getValue();
    }

    public final TextView getTvPreviewTitle() {
        return (TextView) this.tvPreviewTitle$delegate.getValue();
    }

    public final TextView getTvTitle() {
        return (TextView) this.tvTitle$delegate.getValue();
    }

    private final ViewPager2 getVpPreviewImage() {
        return (ViewPager2) this.vpPreviewImage$delegate.getValue();
    }

    private final void loadFile(String str, Function1<? super File, Unit> function1) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new C10151(str, function1, null), 3, null);
    }

    public final void systemShare(File file) {
        ShareUtils.shareFile(this, file, (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? false : false, (60 & 64) == 0 ? new C10161() : null);
    }

    public final int getIndex() {
        return this.index;
    }

    @Override
    public int getLayoutId() {
        return R.layout.activity_image_preview;
    }

    public final int getMaxSelect() {
        return this.maxSelect;
    }

    @Override
    public void initData() {
        int i10;
        ViewPager2 vpPreviewImage;
        ArrayList<String> stringArrayList = getStringArrayList(IMAGE_LIST);
        ArrayList<String> stringArrayList2 = getStringArrayList(IMAGE_SELECT_LIST);
        ArrayList<Integer> integerArrayList = getIntegerArrayList(IMAGE_SELECT_POSITION_LIST);
        boolean z10 = getBoolean(IMAGE_PREVIEW_SHOW_MENU, false);
        if (stringArrayList2 != null) {
            this.selectImage.addAll(stringArrayList2);
        }
        if (integerArrayList != null) {
            this.selectPosition.addAll(integerArrayList);
        }
        this.maxSelect = getInt(IMAGE_MAX_SELECT);
        ScreenUtils.setFullScreen(this);
        int i11 = this.maxSelect;
        if (i11 == 0) {
            BarUtils.setNavBarVisibility((Activity) this, false);
            BarUtils.setStatusBarVisibility((Activity) this, false);
            TextView tvImageSelect = getTvImageSelect();
            if (tvImageSelect != null) {
                tvImageSelect.setVisibility(4);
            }
            FrameLayout flTitleBack = getFlTitleBack();
            if (flTitleBack != null) {
                flTitleBack.setVisibility(4);
            }
            TextView tvPreviewTitle = getTvPreviewTitle();
            if (tvPreviewTitle != null) {
                tvPreviewTitle.setVisibility(0);
            }
            i10 = 3;
        } else if (i11 != 1) {
            MiniBarUtils.setStatusBarNightMode(this);
            i10 = 2;
        } else {
            MiniBarUtils.setStatusBarNightMode(this);
            i10 = 1;
        }
        this.selectMode = i10;
        getAdapter().setSelectMode(this.selectMode);
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            finish();
            return;
        }
        getAdapter().setData(stringArrayList);
        getAdapter().setOnItemClickListener(this);
        getAdapter().setOnChildClickListener(R.id.fl_image_select_check, this);
        ViewPager2 vpPreviewImage2 = getVpPreviewImage();
        if (vpPreviewImage2 != null) {
            vpPreviewImage2.setAdapter(getAdapter());
        }
        if (stringArrayList.size() != 1) {
            if (this.selectMode == 3) {
                TextView tvTitle = getTvTitle();
                if (tvTitle != null) {
                    tvTitle.setVisibility(4);
                }
                TextView tvPreviewTitle2 = getTvPreviewTitle();
                if (tvPreviewTitle2 != null) {
                    tvPreviewTitle2.setVisibility(0);
                }
            } else {
                TextView tvPreviewTitle3 = getTvPreviewTitle();
                if (tvPreviewTitle3 != null) {
                    tvPreviewTitle3.setVisibility(4);
                }
                TextView tvTitle2 = getTvTitle();
                if (tvTitle2 != null) {
                    tvTitle2.setVisibility(0);
                }
            }
            ViewPager2 vpPreviewImage3 = getVpPreviewImage();
            if (vpPreviewImage3 != null) {
                vpPreviewImage3.registerOnPageChangeCallback(this.mPageChangeCallback);
            }
            int i12 = getInt(IMAGE_SELECT_INDEX);
            this.index = i12;
            if (i12 < stringArrayList.size() && (vpPreviewImage = getVpPreviewImage()) != null) {
                vpPreviewImage.setCurrentItem(this.index, false);
            }
        }
        if (this.selectMode == 1) {
            TextView tvImageSelect2 = getTvImageSelect();
            if (tvImageSelect2 != null) {
                tvImageSelect2.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_white));
            }
        } else {
            changeSelectTv();
        }
        LinearLayout linearOperatePanel = getLinearOperatePanel();
        if (linearOperatePanel != null) {
            ViewExtKt.toVisibleOrGone(linearOperatePanel, z10);
        }
    }

    @Override
    public void initView() {
        ViewPager2 vpPreviewImage = getVpPreviewImage();
        if (vpPreviewImage != null) {
            vpPreviewImage.setOffscreenPageLimit(3);
        }
        FrameLayout flTitleBack = getFlTitleBack();
        if (flTitleBack != null) {
            flTitleBack.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        setOnClickListener(getFlTitleBack(), getTvImageSelect(), getFlOperateShare(), getFlOperateDownload());
    }

    @Override
    public void onBackPressed() {
        if (this.selectMode == 2) {
            Intent intent = new Intent();
            intent.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
            intent.putIntegerArrayListExtra(IMAGE_SELECT_POSITION_LIST, this.selectPosition);
            intent.putExtra(IMAGE_SELECT_BACK_PRESSED, true);
            setResult(-1, intent);
        }
        finish();
    }

    @Override
    public void onChildClick(RecyclerView recyclerView, View view, int i10) {
        String item;
        int i11 = 0;
        if (this.selectMode == 1 || view == null || view.getId() != R.id.fl_image_select_check || (item = getAdapter().getItem(i10)) == null) {
            return;
        }
        if (!new File(item).isFile()) {
            getAdapter().removeItem(i10);
            String string = getResources().getString(R.string.image_select_error);
            Intrinsics.g(string, "resources.getString(R.string.image_select_error)");
            OooO.OooO0O0(string);
            return;
        }
        int iIndexOf = this.selectImage.indexOf(item);
        if (iIndexOf < 0) {
            if (this.selectImage.size() < this.maxSelect) {
                if (this.selectImage.size() < this.maxSelect) {
                    this.selectImage.add(item);
                    this.selectPosition.add(Integer.valueOf(i10));
                    changeSelectTv();
                }
                getAdapter().notifyItemChanged(i10);
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string2 = getResources().getString(R.string.image_select_max_hint);
            Intrinsics.g(string2, "resources.getString(R.st…ng.image_select_max_hint)");
            String str = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.maxSelect)}, 1));
            Intrinsics.g(str, "format(format, *args)");
            OooO.OooO00o(str);
            return;
        }
        this.selectPosition.remove(Integer.valueOf(i10));
        this.selectImage.remove(item);
        changeSelectTv();
        getAdapter().notifyItemChanged(i10);
        for (Object obj : this.selectPosition) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            Integer num = (Integer) obj;
            if (i11 >= iIndexOf && num != null) {
                getAdapter().notifyItemChanged(num.intValue());
            }
            i11 = i12;
        }
    }

    @Override
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        if (Intrinsics.c(view, getFlTitleBack())) {
            onBackPressed();
            return;
        }
        if (!Intrinsics.c(view, getTvImageSelect())) {
            if (Intrinsics.c(view, getFlOperateShare())) {
                doShareFile();
                return;
            } else {
                if (Intrinsics.c(view, getFlOperateDownload())) {
                    doDownloadFile();
                    return;
                }
                return;
            }
        }
        if (this.selectMode != 1) {
            if (this.selectImage.size() > 0) {
                Intent intent = new Intent();
                intent.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
                setResult(-1, intent);
                finish();
                return;
            }
            return;
        }
        if (this.index < getAdapter().getData().size()) {
            this.selectImage.add(getAdapter().getData().get(this.index));
            Intent intent2 = new Intent();
            intent2.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
            setResult(-1, intent2);
            finish();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        getMTaskQueue().OooO00o.clear();
        ViewPager2 vpPreviewImage = getVpPreviewImage();
        if (vpPreviewImage != null) {
            vpPreviewImage.unregisterOnPageChangeCallback(this.mPageChangeCallback);
        }
    }

    @Override
    public void onItemClick(RecyclerView recyclerView, View view, int i10) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    @Override
    public void onResume() {
        super.onResume();
        getMTaskQueue().OooO00o();
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setMaxSelect(int i10) {
        this.maxSelect = i10;
    }

    @Override
    public void hideStatusLoading() {
    }

    @Override
    public void showStatusLoading() {
    }
}
