package com.transsion.playercommon.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.DrawableRes;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.FootOperationBar;
import defpackage.h27;
import defpackage.jf;
import defpackage.nx8;
import defpackage.p06;
import defpackage.pp3;
import defpackage.rr3;
import defpackage.s08;
import defpackage.tpb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class AppFootActionBar extends FootOperationBar {
    public static final int BOTTOM_ADD_MENU_INDEX = 2;
    public static final int BOTTOM_DELETE_FILE_MENU_INDEX = 0;
    public static final int BOTTOM_DELETE_MENU_INDEX = 3;
    public static final int BOTTOM_DELETE_PRIVATE_INDEX = 0;
    public static final int BOTTOM_FILE_DELETE_MENU_INDEX = 4;
    public static final int BOTTOM_HIDE_FILE_MENU_INDEX = 1;
    public static final int BOTTOM_HIDE_MENU_INDEX = 1;
    public static final int BOTTOM_RESTORE_PRIVATE_INDEX = 1;
    public static final int BOTTOM_SHARE_MENU_INDEX = 0;
    private static final String TAG = "AppFootActionBar";
    protected int mAddIcon;
    private final ArrayList<MediaItem> mAllBucketMediaItem;
    protected Context mContext;
    protected int mDeleteIcon;
    protected int mDownloadIcon;
    protected FileOperateUtils mFileOperateUtils;
    protected int mFilterIcon;
    private long mFirstClickTime;
    protected int mHideIcon;
    private boolean mIsXHideExist;
    protected int mListFlag;
    protected c mListener;
    private int[] mOriginMenuIconIds;
    private int[] mOriginMenuTitleIds;
    private d mPromptDialog;
    protected int mRemoveIcon;
    protected int mRestoreIcon;
    private final ArrayList<MediaBucket> mSelectMediaBuckets;
    private final ArrayList<MediaItem> mSelectMediaItems;
    protected int mShareIcon;
    private final boolean mSupportHide;
    ArrayList<MediaItem> mTempInfos;
    private final ArrayList<VideoCloudData> mVideoCloudDataList;
    private com.transsion.widgetslib.dialog.c progressDialog;

    public class a implements s08 {
        public final int a;
        public final int b;
        public final ArrayList c;
        public final boolean d;
        public final MediaItem e;

        public a(int i, int i2, ArrayList arrayList, boolean z, MediaItem mediaItem) {
            this.a = i;
            this.b = i2;
            this.c = arrayList;
            this.d = z;
            this.e = mediaItem;
        }

        @Override
        public void a() {
            int i = this.a;
            if (i < this.b - 1) {
                AppFootActionBar.this.preDelete(i + 1, this.c, this.d);
            } else {
                AppFootActionBar.this.delete(this.c, this.d);
            }
        }

        @Override
        public void b() {
            Log.d(AppFootActionBar.TAG, "preRename operateCancel, path" + this.e.data + ",\n" + BaseConstant.f + ",\n" + BaseConstant.g);
            ToastUtils.s(R.string.operation_fail);
        }
    }

    public class b implements FileOperateUtils.k {
        public b() {
        }

        @Override
        public void a(double d) {
            if (AppFootActionBar.this.progressDialog != null) {
                AppFootActionBar.this.progressDialog.h((int) (d * 100.0d));
            }
        }

        @Override
        public void d() {
            try {
                AppFootActionBar appFootActionBar = AppFootActionBar.this;
                if (appFootActionBar.mContext != null && appFootActionBar.mPromptDialog != null && AppFootActionBar.this.mPromptDialog.isShowing()) {
                    Context context = AppFootActionBar.this.mContext;
                    if ((context instanceof Activity) && !((Activity) context).isFinishing()) {
                        AppFootActionBar.this.mPromptDialog.dismiss();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            c cVar = AppFootActionBar.this.mListener;
            if (cVar != null) {
                cVar.finish();
            }
            h27.c().e(1072, new Object[0]);
            Log.d(AppFootActionBar.TAG, "deleteSuccess " + AppFootActionBar.this.mContext);
        }

        @Override
        public void f() {
            h27.c().e(1163, new Object[0]);
            AppFootActionBar appFootActionBar = AppFootActionBar.this;
            appFootActionBar.progressDialog = new com.transsion.widgetslib.dialog.c(appFootActionBar.mContext);
            AppFootActionBar.this.progressDialog.j(AppFootActionBar.this.mContext.getResources().getString(R.string.delete_progress));
            AppFootActionBar appFootActionBar2 = AppFootActionBar.this;
            appFootActionBar2.mPromptDialog = appFootActionBar2.progressDialog.l();
        }

        @Override
        public void g(String str, String str2) {
        }

        @Override
        public void h() {
            try {
                AppFootActionBar appFootActionBar = AppFootActionBar.this;
                if (appFootActionBar.mContext == null || appFootActionBar.mPromptDialog == null || !AppFootActionBar.this.mPromptDialog.isShowing()) {
                    return;
                }
                Context context = AppFootActionBar.this.mContext;
                if (!(context instanceof Activity) || ((Activity) context).isFinishing()) {
                    return;
                }
                AppFootActionBar.this.mPromptDialog.dismiss();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public interface c {
        void finish();
    }

    public AppFootActionBar(Context context) {
        this(context, null);
    }

    public final boolean a0() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mFirstClickTime;
        Log.w(TAG, "ingoreClickEvent interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < 500;
    }

    public int checkItemIndex(int i) {
        return (this.mIsXHideExist || i <= 0) ? i : i + 1;
    }

    public void delete(ArrayList<MediaItem> arrayList, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("delete ");
        sb.append(arrayList.size());
        sb.append(StringUtils.COMMA);
        sb.append(this.mFileOperateUtils != null);
        Log.d(TAG, sb.toString());
        this.mFileOperateUtils.j0(z, true);
        this.mFileOperateUtils.f0(new b());
    }

    public void enableHide(boolean z) {
        Log.e(TAG, "enableHide: " + z);
        this.mIsXHideExist = z;
    }

    public void initMenuState() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.mListFlag;
        if (i9 == 5) {
            if (this.mIsXHideExist) {
                this.mOriginMenuIconIds = new int[]{this.mDeleteIcon, this.mHideIcon};
                this.mOriginMenuTitleIds = new int[]{R.string.delete, R.string.hide};
                return;
            } else {
                this.mOriginMenuIconIds = new int[]{this.mDeleteIcon};
                this.mOriginMenuTitleIds = new int[]{R.string.delete};
                return;
            }
        }
        if (i9 == 42) {
            this.mOriginMenuIconIds = new int[]{this.mDeleteIcon, this.mRestoreIcon};
            this.mOriginMenuTitleIds = new int[]{R.string.delete, R.string.privacy_cancel_hide};
            return;
        }
        if (i9 == 34) {
            this.mOriginMenuIconIds = new int[]{this.mDeleteIcon};
            this.mOriginMenuTitleIds = new int[]{R.string.delete};
            return;
        }
        if (i9 == 12) {
            this.mOriginMenuIconIds = new int[]{R.drawable.ic_farvorite_w};
            this.mOriginMenuTitleIds = new int[]{R.string.clear_collect_tip};
            return;
        }
        if (i9 == 1) {
            this.mOriginMenuIconIds = new int[]{R.drawable.ic_clear_history_menu_all};
            this.mOriginMenuTitleIds = new int[]{R.string.clear};
            return;
        }
        if (i9 == 13) {
            if (this.mIsXHideExist) {
                this.mOriginMenuIconIds = new int[]{this.mShareIcon, this.mHideIcon, this.mAddIcon, this.mDeleteIcon};
                this.mOriginMenuTitleIds = new int[]{R.string.share, R.string.hide, R.string.add_to, R.string.delete};
                return;
            } else {
                this.mOriginMenuIconIds = new int[]{this.mShareIcon, this.mAddIcon, this.mDeleteIcon};
                this.mOriginMenuTitleIds = new int[]{R.string.share, R.string.add_to, R.string.delete};
                return;
            }
        }
        boolean z = i9 == 30;
        boolean z2 = i9 == 6;
        boolean z3 = i9 == 33;
        if (!this.mIsXHideExist) {
            if (z || z3) {
                int i10 = this.mShareIcon;
                int i11 = this.mAddIcon;
                if (z2) {
                    i = R.drawable.ic_clear_history_menu_all;
                } else if (z3) {
                    i = R.drawable.ic_cancel_favorite;
                } else {
                    i = z ? this.mRemoveIcon : this.mDeleteIcon;
                }
                this.mOriginMenuIconIds = new int[]{i10, i11, i, this.mDeleteIcon};
                int i12 = R.string.share;
                int i13 = R.string.add_to;
                if (z2) {
                    i2 = R.string.clear;
                } else if (z3) {
                    i2 = R.string.unfavorite;
                } else {
                    i2 = z ? R.string.remove : R.string.delete;
                }
                this.mOriginMenuTitleIds = new int[]{i12, i13, i2, R.string.delete};
                return;
            }
            int i14 = this.mShareIcon;
            int i15 = this.mAddIcon;
            if (z2) {
                i3 = R.drawable.ic_clear_history_menu_all;
            } else if (z3) {
                i3 = R.drawable.ic_cancel_favorite;
            } else {
                i3 = z ? this.mRemoveIcon : this.mDeleteIcon;
            }
            this.mOriginMenuIconIds = new int[]{i14, i15, i3};
            int i16 = R.string.share;
            int i17 = R.string.add_to;
            if (z2) {
                i4 = R.string.clear;
            } else if (z3) {
                i4 = R.string.unfavorite;
            } else {
                i4 = z ? R.string.remove : R.string.delete;
            }
            this.mOriginMenuTitleIds = new int[]{i16, i17, i4};
            return;
        }
        if (z || z3) {
            int i18 = this.mShareIcon;
            int i19 = this.mHideIcon;
            int i20 = this.mAddIcon;
            if (z2) {
                i5 = R.drawable.ic_clear_history_menu_all;
            } else if (z3) {
                i5 = R.drawable.ic_cancel_favorite;
            } else {
                i5 = z ? this.mRemoveIcon : this.mDeleteIcon;
            }
            this.mOriginMenuIconIds = new int[]{i18, i19, i20, i5, this.mDeleteIcon};
            int i21 = R.string.share;
            int i22 = R.string.hide;
            int i23 = R.string.add_to;
            if (z2) {
                i6 = R.string.clear;
            } else if (z3) {
                i6 = R.string.unfavorite;
            } else {
                i6 = z ? R.string.remove : R.string.delete;
            }
            this.mOriginMenuTitleIds = new int[]{i21, i22, i23, i6, R.string.delete};
            return;
        }
        int i24 = this.mShareIcon;
        int i25 = this.mHideIcon;
        int i26 = this.mAddIcon;
        if (z2) {
            i7 = R.drawable.ic_clear_history_menu_all;
        } else if (z3) {
            i7 = R.drawable.ic_cancel_favorite;
        } else {
            i7 = z ? this.mRemoveIcon : this.mDeleteIcon;
        }
        this.mOriginMenuIconIds = new int[]{i24, i25, i26, i7};
        int i27 = R.string.share;
        int i28 = R.string.hide;
        int i29 = R.string.add_to;
        if (z2) {
            i8 = R.string.clear;
        } else if (z3) {
            i8 = R.string.unfavorite;
        } else {
            i8 = z ? R.string.remove : R.string.delete;
        }
        this.mOriginMenuTitleIds = new int[]{i27, i28, i29, i8};
    }

    public void initResource() {
        this.mShareIcon = R.drawable.ic_share;
        this.mFilterIcon = R.drawable.ic_filter;
        this.mDeleteIcon = R.drawable.ic_delete;
        this.mRemoveIcon = R.drawable.ic_remove;
        this.mHideIcon = R.drawable.ic_hide_menu;
        this.mAddIcon = R.drawable.ic_add_song;
        this.mRestoreIcon = R.drawable.ic_no_privacy;
        this.mDownloadIcon = R.drawable.icon_download_file;
    }

    public void initView(Context context) {
        this.mContext = context;
        this.mIsXHideExist = pp3.p || (this.mSupportHide && jf.o(context));
        initResource();
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.foot_bar_background, typedValue, true);
        setContainerBackgroundNoOverlay(typedValue.resourceId);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        d dVarM;
        super.onConfigurationChanged(configuration);
        FileOperateUtils fileOperateUtils = this.mFileOperateUtils;
        if (fileOperateUtils == null || (dVarM = fileOperateUtils.M()) == null) {
            return;
        }
        if (dVarM.isShowing()) {
            dVarM.dismiss();
            dVarM.show();
        }
        dVarM.g(configuration);
    }

    public void onItemClick(int i, boolean z) {
        if (a0()) {
            return;
        }
        this.mFirstClickTime = System.currentTimeMillis();
        int i2 = this.mListFlag;
        if (i2 != 5) {
            if (i == 0) {
                preShare(true);
                p06.f0(null, "vd_mul_share_cl", 932460000041L);
                return;
            }
            if (i != 1) {
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, this.mSelectMediaItems, i2, true);
            if (pp3.p) {
                fileOperateUtils.m0();
            } else {
                fileOperateUtils.V();
            }
            p06.f0(null, "vd_mul_encry_cl", 932460000039L);
            c cVar = this.mListener;
            if (cVar != null) {
                cVar.finish();
                return;
            }
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator<MediaBucket> it = this.mSelectMediaBuckets.iterator();
        while (it.hasNext()) {
            hashSet.addAll(tpb.j0().i(it.next()));
        }
        this.mAllBucketMediaItem.addAll(hashSet);
        if (i == 0) {
            preDelete(0, this.mAllBucketMediaItem, z);
            return;
        }
        if (i != 1) {
            return;
        }
        new FileOperateUtils(this.mContext, this.mAllBucketMediaItem, this.mListFlag, true).V();
        c cVar2 = this.mListener;
        if (cVar2 != null) {
            cVar2.finish();
        }
    }

    public void preDelete(int i, ArrayList<MediaItem> arrayList, boolean z) {
        Log.d(TAG, "preDelete " + i);
        if (arrayList.size() == 0) {
            return;
        }
        if (i == 0) {
            this.mTempInfos = new ArrayList<>();
        }
        int size = arrayList.size();
        boolean z2 = true;
        while (i < size) {
            MediaItem mediaItem = arrayList.get(i);
            this.mTempInfos.add(new MediaItem(mediaItem.data));
            if (!nx8.b((BaseActivity) this.mContext, mediaItem.data)) {
                nx8.e((BaseActivity) this.mContext, mediaItem.data, new a(i, size, arrayList, z, mediaItem));
                z2 = false;
            }
            if (!z2) {
                return;
            } else {
                i++;
            }
        }
        if (z2) {
            delete(arrayList, z);
        }
    }

    public void preShare(boolean z) {
        if (this.mSelectMediaItems.size() == 1) {
            MediaItem mediaItem = this.mSelectMediaItems.get(0);
            if (mediaItem.isYoutubeUrl) {
                rr3.c(mediaItem.originUrl, this.mContext);
                return;
            } else {
                rr3.a(mediaItem.mineType, mediaItem.getUri(), this.mContext);
                return;
            }
        }
        if (this.mSelectMediaItems.size() > 300) {
            ToastUtils.s(R.string.share_too_more_tip);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<MediaItem> it = this.mSelectMediaItems.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getUri());
        }
        rr3.b(z ? "video/*" : "audio/*", arrayList, this.mContext);
    }

    public void setAllEnable(boolean z) {
        int i = this.mListFlag;
        if (i == 5) {
            changeItemEnable(0, z);
            if (this.mIsXHideExist) {
                changeItemEnable(1, z);
                return;
            }
            return;
        }
        if (i == 34) {
            changeItemEnable(0, z);
            return;
        }
        if (i == 1) {
            changeItemEnable(0, z);
            return;
        }
        boolean z2 = i == 30;
        boolean z3 = i == 33;
        changeItemEnable(0, z);
        if (!this.mIsXHideExist) {
            if (z2 || z3) {
                changeItemEnable(3, z);
            }
            changeItemEnable(2, z);
            changeItemEnable(1, z);
            return;
        }
        if (z2 || z3) {
            changeItemEnable(4, z);
        }
        changeItemEnable(1, z);
        changeItemEnable(3, z);
        changeItemEnable(2, z);
    }

    public void setDeleteIcon(@DrawableRes int i) {
        this.mDeleteIcon = i;
    }

    public void setFileOperateUtils(FileOperateUtils fileOperateUtils) {
        this.mFileOperateUtils = fileOperateUtils;
    }

    public void setListFlag(int i) {
        this.mListFlag = i;
        initMenuState();
        int[] iArr = this.mOriginMenuIconIds;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArr2 = this.mOriginMenuTitleIds;
        changeItems(iArrCopyOf, Arrays.copyOf(iArr2, iArr2.length));
    }

    public void setOperateFinishListener(c cVar) {
        this.mListener = cVar;
    }

    public void setSelectItems(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        int i = this.mListFlag;
        if (i == 1000 || i == 1001) {
            this.mVideoCloudDataList.clear();
            this.mVideoCloudDataList.addAll(arrayList);
        } else if (i == 5) {
            this.mSelectMediaBuckets.clear();
            this.mSelectMediaBuckets.addAll(arrayList);
        } else {
            this.mSelectMediaItems.clear();
            this.mSelectMediaItems.addAll(arrayList);
        }
    }

    public AppFootActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSelectMediaItems = new ArrayList<>();
        this.mSelectMediaBuckets = new ArrayList<>();
        this.mAllBucketMediaItem = new ArrayList<>();
        this.mVideoCloudDataList = new ArrayList<>();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppFootActionBar);
        this.mSupportHide = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppFootActionBar_support_hide, true);
        typedArrayObtainStyledAttributes.recycle();
        initView(context);
    }
}
