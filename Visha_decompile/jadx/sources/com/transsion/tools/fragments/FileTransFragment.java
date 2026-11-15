package com.transsion.tools.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.markpoint.a;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.R;
import com.transsion.tools.filetrans.fragments.FileTransMainFragment;
import com.transsion.tools.fragments.FileTransFragment;
import defpackage.a64;
import defpackage.kdc;
import defpackage.mu3;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@RequiresApi(29)
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0003R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/transsion/tools/fragments/FileTransFragment;", "Lcom/transsion/playercommon/fragments/BaseFragment;", MethodDecl.initName, "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "Lzfb;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "R", ExifInterface.LATITUDE_SOUTH, "Q", "Landroid/widget/TextView;", CmcdData.STREAM_TYPE_LIVE, "Landroid/widget/TextView;", "mTitleBarTitle", "Landroid/widget/ImageView;", CmcdData.OBJECT_TYPE_MANIFEST, "Landroid/widget/ImageView;", "mIvHistory", "Landroid/view/View$OnClickListener;", "n", "Landroid/view/View$OnClickListener;", "mOnclickListener", "tools_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileTransFragment extends BaseFragment {

    public TextView mTitleBarTitle;

    public ImageView mIvHistory;

    public final View.OnClickListener mOnclickListener = new View.OnClickListener() {
        @Override
        public final void onClick(View view) {
            FileTransFragment.T(this.b, view);
        }
    };

    public static final void T(FileTransFragment fileTransFragment, View view) {
        y45.j(view, "v");
        int id = view.getId();
        if (R.id.title_bar_back == id) {
            FragmentActivity activity = fileTransFragment.getActivity();
            if (activity != null) {
                activity.onBackPressed();
                return;
            }
            return;
        }
        if (R.id.iv_file_trans_history == id) {
            fileTransFragment.Q();
        } else if (R.id.cv_send_files == id) {
            fileTransFragment.S();
        } else if (R.id.cv_receive_files == id) {
            fileTransFragment.R();
        }
    }

    public final void Q() {
        FileTransMainFragment fileTransMainFragment = (FileTransMainFragment) new FileTransMainFragment().setBaseActivity(this.mActivity);
        fileTransMainFragment.setNeedBg(true);
        fileTransMainFragment.p0(true);
        a64.n(fileTransMainFragment, true, true);
        a.a.k();
    }

    public final void R() {
        mu3.l(mu3.a, this.mContext, false, null, 6, null);
        a.a.n();
    }

    public final void S() {
        FileTransMainFragment fileTransMainFragment = (FileTransMainFragment) new FileTransMainFragment().setBaseActivity(this.mActivity);
        fileTransMainFragment.setNeedBg(true);
        a64.n(fileTransMainFragment, true, true);
        a.a.p();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_file_trans, container, false);
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        backgroundFollowBaseWindowByPx(view, (int) this.mContext.getResources().getDimension(R.dimen.video_main_activity_fragment_top_padding));
        int i = R.id.title_bar_back;
        view.findViewById(i).setOnClickListener(this.mOnclickListener);
        view.findViewById(i).setRotationY(kdc.a(this.mContext) ? 180.0f : 0.0f);
        view.findViewById(R.id.cv_send_files).setOnClickListener(this.mOnclickListener);
        view.findViewById(R.id.cv_receive_files).setOnClickListener(this.mOnclickListener);
        TextView textView = (TextView) view.findViewById(R.id.title_bar_title);
        this.mTitleBarTitle = textView;
        if (textView != null) {
            textView.setText(getString(R.string.visha_file_trans));
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.iv_file_trans_history);
        this.mIvHistory = imageView;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        ImageView imageView2 = this.mIvHistory;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.mOnclickListener);
        }
        a.a.j();
    }
}
