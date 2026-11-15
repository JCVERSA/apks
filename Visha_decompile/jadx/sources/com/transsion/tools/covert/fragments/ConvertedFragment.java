package com.transsion.tools.covert.fragments;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.p004lifecycle.ViewModelStoreOwner;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.activities.AudioSheetDialogActivity;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.fragments.AudioDragBaseFragment;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.fragments.PlayBaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.widgets.VideoMainRecyclerView;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.tools.covert.fragments.ConvertedFragment;
import com.transsion.tools.model.ConvertDaoModel;
import com.transsion.utils.CustomLinearLayoutManager;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.ao;
import defpackage.f5;
import defpackage.h16;
import defpackage.h27;
import defpackage.if7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.pp3;
import defpackage.sq3;
import defpackage.t74;
import defpackage.vb;
import defpackage.vg9;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ConvertedFragment extends AudioDragBaseFragment {
    public ConvertDaoModel w0;
    public int x0;

    public class a implements Observer {
        public a() {
        }

        @Override
        public void onChanged(List list) {
            ConvertedFragment.this.loadData(false);
        }
    }

    public class b extends if7 {
        public b(int i, boolean z) {
            super(i, z);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (((PlayBaseFragment) ConvertedFragment.this).isInEditMode) {
                ConvertedFragment.this.y1(baseQuickAdapter, view, i, false);
                ConvertedFragment.this.V1((AudioItem) baseQuickAdapter.getData().get(i), view);
            } else {
                if (ConvertedFragment.this.ingoreClickEvent()) {
                    return;
                }
                this.mFirstClickTime = System.currentTimeMillis();
                AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
                audioItem.setSelectedPos(i);
                ConvertedFragment.this.J2(audioItem);
            }
        }
    }

    public class c implements FileOperateUtils.k {
        public final AudioItem a;
        public final int b;

        public c(AudioItem audioItem, int i) {
            this.a = audioItem;
            this.b = i;
        }

        public static void l(String str, AudioItem audioItem) {
            ao.U().v0(audioItem, str);
        }

        public static void m(Throwable th) {
            Log.e("ConvertedFragment", "updateAudioConvertedElement error: " + th);
        }

        @Override
        public void d() {
            h27.c().e(1072, new Object[0]);
            if (ConvertedFragment.this.q.size() > 0 && ConvertedFragment.this.q.size() > this.b) {
                ConvertedFragment.this.q.remove(this.b);
            }
            ConvertedFragment.this.u.notifyDataSetChanged();
            ConvertedFragment.this.A1();
        }

        @Override
        public void e() {
            if (pp3.p) {
                h27.c().e(1139, new Object[0]);
            }
        }

        @Override
        public void g(String str, final String str2) {
            mc7.K(this.a).d0(k29.c()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    ConvertedFragment.c.l(str2, (AudioItem) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    ConvertedFragment.c.m((Throwable) obj);
                }
            });
            ConvertedFragment.this.postDelayLoadDataChange();
            ConvertedFragment.this.t1(this.a, str2, true);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            try {
                Context context = ((BaseFragment) ConvertedFragment.this).mContext;
                int i = WebActivity.K0;
                Intent intent = new Intent(context, (Class<?>) WebActivity.class);
                intent.putExtra(VkConstant.URL, "https://360media.com.ng/");
                intent.putExtra("need_new_web", true);
                intent.putExtra("web_url_from", "to_mp3_list_page_show");
                f5.b(intent, 1242, ((BaseFragment) ConvertedFragment.this).mActivity);
            } catch (ClassNotFoundException e) {
                Log.e("ConvertedFragment", e.getMessage());
            } catch (Exception e2) {
                Log.e("ConvertedFragment", e2.getMessage());
            }
        }
    }

    public static void D2(Throwable th) {
        Log.e("ConvertedFragment", "loadData " + th);
    }

    public static ConvertedFragment G2(int i) {
        ConvertedFragment convertedFragment = new ConvertedFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("video_to_mp3_item_id", i);
        convertedFragment.setArguments(bundle);
        return convertedFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void I2(String str, AudioItem audioItem, int i) {
        Intent intent = new Intent();
        intent.putExtra("data", audioItem);
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_LIST_FLAG, this.s);
        vg9.e((ArrayList) this.D.d().getValue());
        intent.putExtra(SheetDialogParamsConstant.IN_PARAM_FROM_LIST_MORE_ICON, true);
        intent.setClass(this.mActivity, AudioSheetDialogActivity.class);
        this.S.launch(intent);
        FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), audioItem, this.s);
        this.mFileOperateUtils = fileOperateUtils;
        fileOperateUtils.e0(true);
        this.mFileOperateUtils.f0(new c(audioItem, i));
    }

    public void J2(AudioItem audioItem) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = 31;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.folderName = this.mContext.getText(R.string.convert_to_audio).toString();
        }
        Log.d("ConvertedFragment", "startOpenAudio " + playAudioDataConvertToPlayAudioData);
        AudioPlayerActivity.D1(this.mContext, playAudioDataConvertToPlayAudioData);
    }

    private void z2() {
        this.u.setOnSelectListener(this);
        b bVar = new b(150, true);
        this.v = bVar;
        this.u.setOnItemClickListener(bVar);
        this.u.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.a.A2(baseQuickAdapter, view, i);
            }
        });
    }

    @Override
    public void A1() {
        super.A1();
        h27.c().e(1085, Boolean.valueOf(this.q.size() == 0));
        BaseFragment.d dVar = this.mMenuShowListener;
        if (dVar != null) {
            dVar.a(this.q.size() != 0);
        }
        View view = this.l;
        if (view != null) {
            ((ImageView) view.findViewById(com.transsion.tools.R.id.lottie_no_audios_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
        }
    }

    public final void A2(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.isInEditMode) {
            y1(baseQuickAdapter, view, i, true);
            V1((AudioItem) baseQuickAdapter.getData().get(i), view);
        } else {
            if (ingoreClickEvent()) {
                return;
            }
            this.mFirstClickTime = System.currentTimeMillis();
            AudioItem audioItem = (AudioItem) baseQuickAdapter.getData().get(i);
            if (view.getId() == com.transsion.audio.R.id.iv_item_more) {
                I2(this.mFragmentTag, audioItem, i);
            }
        }
    }

    public final List B2(boolean z, ConvertedFragment convertedFragment) {
        ArrayList arrayList = new ArrayList(ao.U().C(z ? 30 : Integer.MAX_VALUE));
        G0(arrayList);
        return arrayList;
    }

    public final void C2(long j, List list) {
        this.q.clear();
        this.q.addAll(list);
        Log.i("ConvertedFragment", "loadData " + list.size());
        this.u.W(this.x0);
        this.u.setNewData(this.q);
        H0();
        A1();
        if (j > 0) {
            F2();
        }
    }

    public void E2(final boolean z, final long j) {
        super.loadData(z);
        mc7.K(this).g(this.mActivity.bindToLifecycle()).i(j, TimeUnit.MILLISECONDS).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.B2(z, (ConvertedFragment) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.C2(j, (List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                ConvertedFragment.D2((Throwable) obj);
            }
        });
    }

    public void F2() {
        MusicPlayManager.S().E1(this);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("audio_amount", this.q.size());
        trackData.add("audio_amount", this.q.size());
        p06.q0(trackData, bundle, "to_mp3_list_page_show_p", 9324L);
    }

    public void H2() {
        AudioItemAdapter audioItemAdapter = this.u;
        if (audioItemAdapter != null) {
            audioItemAdapter.notifyDataSetChanged();
        }
    }

    @Override
    public void N0() {
        View view;
        if (this.l == null && (view = this.o) != null) {
            View viewInflate = ((ViewStub) view.findViewById(com.transsion.tools.R.id.main_empty_view)).inflate();
            this.l = viewInflate;
            ((ImageView) viewInflate.findViewById(com.transsion.tools.R.id.lottie_no_audios_view)).setImageResource(com.transsion.common.R.drawable.ic_file_empty_illustration);
            ((TextView) this.l.findViewById(com.transsion.sniffer_load.R.id.text_no_audios)).setText(com.transsion.sniffer_load.R.string.file_empty);
        }
        this.l.findViewById(com.transsion.tools.R.id.add_play_list_tv).setOnClickListener(new d());
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1187) {
            loadData(false);
        }
    }

    @Override
    public void editMode(boolean z) {
        super.editMode(z);
        PlayBaseFragment.d dVar = this.mEditModeListener;
        if (dVar != null && z) {
            dVar.a(true);
        }
        if (z) {
            T1(this.o);
        } else {
            Z1();
        }
        if (z) {
            p06.d0("moretab_tomp3_multiple_cl");
        }
    }

    @Override
    public int getDefaultListFlag() {
        return 31;
    }

    @Override
    public void initEvents() {
        super.initEvents();
        this.mEvents.add(1187);
    }

    @Override
    public void initTitleBar(View view) {
        super.initTitleBar(view);
        this.mTitleBarLayout.setVisibility(8);
    }

    @Override
    public void loadData(boolean z) {
        E2(z, 300L);
    }

    @Override
    public void markPointVisiable(boolean z) {
        super.markPointVisiable(z);
        if (this.mIsVisibleToUser && this.mIsParentVisibleToUser) {
            p06.f0(null, "to_mp3_list_page_show", 932460000121L);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.s = 31;
        this.w0 = (ConvertDaoModel) new ViewModelProvider((ViewModelStoreOwner) getContext(), new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(ConvertDaoModel.class);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.u = new AudioItemAdapter(this.mContext);
        this.o = layoutInflater.inflate(com.transsion.tools.R.layout.audios_converter_fragment, viewGroup, false);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.x0 = arguments.getInt("video_to_mp3_item_id");
        }
        return this.o;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onPlayItemChanged(AudioItem audioItem) {
        this.u.T(audioItem);
    }

    @Override
    public void onResume() {
        super.onResume();
        sq3.a().b(this);
        MusicPlayManager.S().e1(this);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        initTitleBar(view);
        z2();
        this.H = (VideoMainRecyclerView) view.findViewById(com.transsion.tools.R.id.rv_main_fragment);
        this.I = (RecyclerViewFastScroller) view.findViewById(com.transsion.magicvideo.R.id.rv_fast_scroller);
        this.H.setLayoutManager(new CustomLinearLayoutManager(this.mContext));
        this.H.setAdapter(this.u);
        this.u.bindToRecyclerView(this.H);
        OverScrollDecorHelper.setUpOverScroll(this.H, 0);
        this.w0.getConvertListData().observe(getViewLifecycleOwner(), new a());
        initSortView(view, false);
        O1();
        N1();
    }

    @Override
    public void refresh() {
        E2(false, 300L);
    }

    @Override
    public void t(boolean z) {
        super.t(z);
        if (z) {
            return;
        }
        h16.c();
        AudioItemAdapter audioItemAdapter = this.u;
        audioItemAdapter.setNewData(SortUtil.u(audioItemAdapter.getData()));
        p06.B(this.s, Boolean.FALSE);
    }
}
