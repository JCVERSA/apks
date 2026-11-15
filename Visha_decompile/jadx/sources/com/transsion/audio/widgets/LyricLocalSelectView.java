package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.audio.adapter.LyricAdapter;
import com.transsion.audio.widgets.LyricLocalSelectView;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.playercommon.data.FileInfo;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.playercommon.widgets.BreadcrumbsView;
import com.transsion.utils.CustomLinearLayoutManager;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.se;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class LyricLocalSelectView extends LinearLayout {
    public static final String[] LYRIC_EXTENSION = {".srt", ".lrc", ".krc"};
    private static final String SEPARATOR = "/";
    private static final String TAG = "LyricLocalSelectView";
    private int lastItemCount;
    private BreadcrumbsView.a listener;
    private BreadcrumbsView mBreadcrumbsView;
    private Context mContext;
    private String mCurFilePath;
    private ArrayList<SubtitleTrackInfo> mDataList;
    private View mEmptyView;
    public HashSet<String> mExtensions;
    private ArrayList<FileInfo> mFileInfoDataList;
    private boolean mIsAllSubtitleMode;
    private boolean mIsRootPath;
    private CustomLinearLayoutManager mLayoutManager;
    private SelectListener mListener;
    private MountPointManager mMountPointManager;
    private LyricAdapter mSubtitleFileListAdapter;
    private RecyclerView mSubtitleListRv;
    private int mTrackValue;
    private View mView;
    private int subFileCount;

    public interface SelectListener {
        void selectLyric(String str);
    }

    public LyricLocalSelectView(Context context) {
        this(context, null);
    }

    @SuppressLint({"CheckResult"})
    private void checkPathItems(final String str, boolean z) {
        this.mCurFilePath = str;
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.lambda$checkPathItems$2(str, (LyricLocalSelectView) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$checkPathItems$3((Boolean) obj);
            }
        });
    }

    private void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.lyric_local_select_layout, (ViewGroup) this, true);
        this.mView = viewInflate;
        BreadcrumbsView breadcrumbsView = (BreadcrumbsView) viewInflate.findViewById(R.id.bv_path_navigation);
        this.mBreadcrumbsView = breadcrumbsView;
        breadcrumbsView.addItemClickListener(this.listener);
        this.mBreadcrumbsView.setTextColor(R.color.os_text_tertiary_color);
        View view = this.mView;
        int i = R.id.rv_subtitle_list;
        this.mSubtitleListRv = (RecyclerView) view.findViewById(i);
        MountPointManager mountPointManagerF = MountPointManager.f();
        this.mMountPointManager = mountPointManagerF;
        mountPointManagerF.k(se.a());
        this.mSubtitleFileListAdapter = new LyricAdapter();
        this.mSubtitleListRv = (RecyclerView) this.mView.findViewById(i);
        CustomLinearLayoutManager customLinearLayoutManager = new CustomLinearLayoutManager(this.mContext);
        this.mLayoutManager = customLinearLayoutManager;
        this.mSubtitleListRv.setLayoutManager(customLinearLayoutManager);
        this.mExtensions.addAll(Arrays.asList(LYRIC_EXTENSION));
        initSubtitleListAdapter();
    }

    private void initSubtitleListAdapter() {
        this.mSubtitleListRv.setAdapter(this.mSubtitleFileListAdapter);
        this.mSubtitleFileListAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.lambda$initSubtitleListAdapter$0(baseQuickAdapter, view, i);
            }
        });
    }

    public Boolean lambda$checkPathItems$2(String str, LyricLocalSelectView lyricLocalSelectView) throws Exception {
        return Boolean.valueOf(updateDataList(str));
    }

    public void lambda$checkPathItems$3(Boolean bool) throws Exception {
        this.mSubtitleFileListAdapter.setNewData(this.mFileInfoDataList);
        updateEmptyView();
    }

    public void lambda$initSubtitleListAdapter$0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        SelectListener selectListener;
        if (this.mFileInfoDataList.size() == 0) {
            return;
        }
        try {
            File file = this.mFileInfoDataList.get(i).getFile();
            if (file == null) {
                return;
            }
            String path = file.getPath();
            if (file.isDirectory()) {
                checkPathItems(path, false);
                this.mBreadcrumbsView.refreshTab(path + SEPARATOR);
            } else if (file.isFile() && (selectListener = this.mListener) != null) {
                selectListener.selectLyric(file.getPath());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        BreadcrumbsView breadcrumbsView = this.mBreadcrumbsView;
        if (breadcrumbsView != null) {
            this.lastItemCount = breadcrumbsView.getItemViewCount();
        }
    }

    public void lambda$new$1(String str) {
        checkPathItems(str, false);
        BreadcrumbsView breadcrumbsView = this.mBreadcrumbsView;
        int itemViewCount = breadcrumbsView != null ? breadcrumbsView.getItemViewCount() : 0;
        p06.n0("vd_cp_setting_sub_path_back", "tier", (this.lastItemCount - itemViewCount) - 1);
        this.lastItemCount = itemViewCount;
    }

    private void updateBreadcrumbsViewVisibility() {
        this.mBreadcrumbsView.setVisibility(this.mIsAllSubtitleMode ? 8 : 0);
    }

    private boolean updateDataList(String str) {
        this.subFileCount = 0;
        boolean zEquals = "/storage".equals(str);
        this.mIsRootPath = zEquals;
        if (zEquals) {
            this.mFileInfoDataList.clear();
            for (MountPointManager.b bVar : MountPointManager.f().g()) {
                FileInfo fileInfo = new FileInfo(bVar.b);
                fileInfo.setName(bVar.a);
                fileInfo.setIsMountPoint(true);
                fileInfo.srcId = bVar.c;
                this.mFileInfoDataList.add(fileInfo);
            }
        } else {
            LogUtils.N(TAG, "updateDataList: root: " + str);
            Path path = Paths.get(str, new String[0]);
            this.mFileInfoDataList.clear();
            try {
                DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(path);
                try {
                    for (Path path2 : directoryStreamNewDirectoryStream) {
                        if (Files.isRegularFile(path2, new LinkOption[0])) {
                            LogUtils.N(TAG, "Directory: " + path2);
                            String string = path2.toString();
                            if (string.contains(Consts.DOT)) {
                                if (this.mExtensions.contains(string.substring(string.lastIndexOf(Consts.DOT)))) {
                                    this.subFileCount++;
                                    this.mFileInfoDataList.add(new FileInfo(string));
                                }
                            }
                        } else {
                            LogUtils.N(TAG, "File: " + path2);
                            this.mFileInfoDataList.add(new FileInfo(path2.toString()));
                        }
                    }
                    directoryStreamNewDirectoryStream.close();
                } catch (Throwable th) {
                    if (directoryStreamNewDirectoryStream != null) {
                        try {
                            directoryStreamNewDirectoryStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                e.printStackTrace();
                LogUtils.m(TAG, "Failed to get file list from " + str + ": " + e.getMessage());
            }
        }
        return true;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setCurrentPath(String str) {
        checkPathItems(str, true);
        this.mBreadcrumbsView.refreshTab(this.mCurFilePath);
        this.lastItemCount = this.mBreadcrumbsView.getItemViewCount();
    }

    public void setListener(SelectListener selectListener) {
        this.mListener = selectListener;
    }

    public void updateEmptyView() {
        View view;
        if (this.mEmptyView == null && (view = this.mView) != null) {
            this.mEmptyView = ((ViewStub) view.findViewById(R.id.file_empty_view)).inflate();
        }
        if (this.mEmptyView != null) {
            boolean zIsEmpty = this.mFileInfoDataList.isEmpty();
            this.mEmptyView.setVisibility(zIsEmpty ? 0 : 8);
            this.mSubtitleListRv.setVisibility(zIsEmpty ? 8 : 0);
            TextView textView = (TextView) this.mEmptyView.findViewById(R.id.text_no_files);
            if (textView != null) {
                textView.setTextColor(getResources().getColor(R.color.os_text_secondary_color));
            }
        }
    }

    public LyricLocalSelectView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LyricLocalSelectView(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public LyricLocalSelectView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mDataList = new ArrayList<>();
        this.mFileInfoDataList = new ArrayList<>();
        this.lastItemCount = 0;
        this.subFileCount = 0;
        this.mExtensions = new HashSet<>();
        this.listener = new BreadcrumbsView.a() {
            @Override
            public final void a(String str) {
                this.a.lambda$new$1(str);
            }
        };
        this.mContext = context;
        init();
    }
}
