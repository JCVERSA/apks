package com.transsion.playercommon.share.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.transsion.playercommon.R;
import com.transsion.playercommon.share.ShareManager;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.share.model.SharePlatformInfo;
import com.transsion.playercommon.share.view.ShareBottomSheetDialog;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0003R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/transsion/playercommon/share/view/ShareBottomSheetDialog;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", MethodDecl.initName, "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "view", "Lzfb;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "Landroidx/recyclerview/widget/RecyclerView;", CmcdData.STREAM_TYPE_LIVE, "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/transsion/playercommon/share/model/ShareContent;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/playercommon/share/model/ShareContent;", "shareContent", "n", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShareBottomSheetDialog extends BottomSheetDialogFragment {

    public RecyclerView recyclerView;

    public ShareContent shareContent;

    public static final zfb v(ShareBottomSheetDialog shareBottomSheetDialog, SharePlatformInfo sharePlatformInfo) {
        y45.j(sharePlatformInfo, "it");
        ShareContent shareContent = shareBottomSheetDialog.shareContent;
        if (shareContent != null) {
            ShareManager shareManager = ShareManager.a;
            Context contextRequireContext = shareBottomSheetDialog.requireContext();
            y45.i(contextRequireContext, "requireContext(...)");
            shareManager.e(contextRequireContext, shareContent, sharePlatformInfo.getOption());
        }
        shareBottomSheetDialog.dismiss();
        return zfb.a;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        y45.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_share, container, false);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.shareContent = (ShareContent) arguments.getParcelable("arg_share_content");
        }
        ShareManager shareManager = ShareManager.a;
        Context contextRequireContext = requireContext();
        y45.i(contextRequireContext, "requireContext(...)");
        SocialPlatformAdapter socialPlatformAdapter = new SocialPlatformAdapter(shareManager.b(contextRequireContext), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return ShareBottomSheetDialog.v(this.b, (SharePlatformInfo) obj);
            }
        });
        RecyclerView recyclerView = this.recyclerView;
        RecyclerView recyclerView2 = null;
        if (recyclerView == null) {
            y45.B("recyclerView");
            recyclerView = null;
        }
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 4));
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 == null) {
            y45.B("recyclerView");
        } else {
            recyclerView2 = recyclerView3;
        }
        recyclerView2.setAdapter(socialPlatformAdapter);
    }
}
