package com.mgtv.ssp.playdetail;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.t;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.BaseHolder;
import com.mgtv.ssp.adapter.listener.OnItemChildClickListener;
import com.mgtv.ssp.bean.VideoDetailInfoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.f;
import java.util.List;

public class SspPlayDetailAdapter extends RecyclerView.Adapter<BaseHolder> {
    public static int a = 0;
    public static int b = 1;
    public static int c = 2;
    public static int d = 3;
    public List<f> e;
    boolean f = false;
    boolean g;
    private LayoutInflater h;
    private FrameLayout i;
    private OnItemChildClickListener j;
    private Context k;

    public class a extends BaseHolder {
        public a(@NonNull View view) {
            super(view);
        }
    }

    public class b extends BaseHolder {
        public LinearLayout a;
        public LinearLayout b;
        public TextView c;
        public RecyclerView d;
        public SspPlayDetailDesAdapter g;
        public ImageView h;
        public View i;

        public b(@NonNull View view) {
            super(view);
            View view2 = this.f;
            if (view2 != null) {
                this.a = (LinearLayout) view2.findViewById(R.id.lay_des_expend);
                this.b = (LinearLayout) this.f.findViewById(R.id.lay_des_expend_tips);
                this.c = (TextView) this.f.findViewById(R.id.tv_v_title);
                this.d = (RecyclerView) this.f.findViewById(R.id.rv_info_list);
                this.h = (ImageView) this.f.findViewById(R.id.iv_expend);
                this.a.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view3) {
                        if (b.this.d.getVisibility() == 0) {
                            com.mgtv.thirdsdk.playcore.utils.f.a(b.this.d, 8);
                            b.this.h.setImageResource(R.drawable.icon_system_more_unflod);
                        } else {
                            com.mgtv.thirdsdk.playcore.utils.f.a(b.this.d, 0);
                            b.this.h.setImageResource(R.drawable.icon_system_more_flod);
                        }
                    }
                });
                SspPlayDetailDesAdapter sspPlayDetailDesAdapter = new SspPlayDetailDesAdapter(SspPlayDetailAdapter.this.h);
                this.g = sspPlayDetailDesAdapter;
                this.d.setAdapter(sspPlayDetailDesAdapter);
                this.d.setLayoutManager(new LinearLayoutManager(SspPlayDetailAdapter.this.k) {
                    @Override
                    public boolean canScrollVertically() {
                        return false;
                    }
                });
                this.i = this.f.findViewById(R.id.view_bottom_line);
                this.f.setTag(this);
            }
        }
    }

    public class c extends BaseHolder {
        public TextView a;
        public ProgressBar b;
        public LinearLayout c;

        public c(@NonNull View view) {
            super(view);
            View view2 = this.f;
            if (view2 != null) {
                this.a = (TextView) view2.findViewById(R.id.textView_empty);
                this.b = (ProgressBar) this.f.findViewById(R.id.recommend_progressBar);
                this.c = (LinearLayout) this.f.findViewById(R.id.lay_empty);
                this.f.findViewById(R.id.tv_error_retry).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view3) {
                        if (SspPlayDetailAdapter.this.j != null) {
                            SspPlayDetailAdapter.this.j.onRetryItemChildClick();
                        }
                    }
                });
            }
        }
    }

    public class d extends BaseHolder {
        public ImageView a;
        public TextView b;
        public TextView c;
        public TextView d;
        public TextView g;
        public TextView h;
        private f j;

        public d(@NonNull View view) {
            super(view);
            View view2 = this.f;
            if (view2 != null) {
                this.a = (ImageView) view2.findViewById(R.id.img_recommend);
                this.b = (TextView) this.f.findViewById(R.id.tv_re_des);
                this.c = (TextView) this.f.findViewById(R.id.tv_re_time);
                this.g = (TextView) this.f.findViewById(R.id.tv_duration);
                this.h = (TextView) this.f.findViewById(R.id.tv_vip);
                this.d = (TextView) this.f.findViewById(R.id.tv_see_again);
                this.f.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view3) {
                        if (SspPlayDetailAdapter.this.j != null) {
                            SspPlayDetailAdapter.this.j.onItemChildClick(d.this.j);
                        }
                    }
                });
                this.f.setTag(this);
            }
        }

        public void a(f fVar) {
            this.j = fVar;
        }
    }

    public SspPlayDetailAdapter(Activity activity) {
        this.h = activity.getLayoutInflater();
        this.k = activity;
    }

    @Override
    public int getItemCount() {
        List<f> list = this.e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public int getItemViewType(int i) {
        f fVar = this.e.get(i);
        return fVar != null ? fVar.b : super.getItemViewType(i);
    }

    private int b(int i) {
        if (i == b) {
            return R.layout.layout_video_desc;
        }
        if (i == d) {
            return R.layout.item_detail_recommend;
        }
        return i == a ? R.layout.item_empty : R.layout.item_detail_ad;
    }

    private void c(BaseHolder baseHolder, f fVar) {
        if (fVar == null || fVar.c == null || !(baseHolder instanceof d) || baseHolder.f == null) {
            return;
        }
        d dVar = (d) baseHolder;
        dVar.a(fVar);
        VideoInfoBean video = fVar.c.getVideo();
        if (video != null) {
            dVar.b.setText(video.getSubTitle());
            if (!TextUtils.isEmpty(video.getReleaseTime())) {
                dVar.c.setText(this.k.getResources().getString(R.string.publish_time) + video.getReleaseTime());
            }
            if (fVar.a) {
                com.mgtv.thirdsdk.playcore.utils.f.a(dVar.d, 0);
            } else {
                com.mgtv.thirdsdk.playcore.utils.f.a(dVar.d, 8);
            }
            Context context = BaseApplication.getContext();
            int iA = context != null ? t.a(context, 6.0f) : 12;
            if (!TextUtils.isEmpty(video.getImgX())) {
                Glide.with(this.k).load2(video.getImgX()).placeholder(android.R.color.white).apply((BaseRequestOptions<?>) new RequestOptions().transforms(new CenterCrop(), new RoundedCorners(iA))).into(dVar.a);
            } else if (!TextUtils.isEmpty(video.getImgY())) {
                Glide.with(this.k).load2(video.getImgY()).placeholder(android.R.color.white).apply((BaseRequestOptions<?>) new RequestOptions().transforms(new CenterCrop(), new RoundedCorners(iA))).into(dVar.a);
            }
            dVar.g.setText(com.mgtv.thirdsdk.playcore.utils.c.b(video.getDuration()));
            if (video.getIsPay() == 1) {
                com.mgtv.thirdsdk.playcore.utils.f.a(dVar.h, 0);
            } else {
                com.mgtv.thirdsdk.playcore.utils.f.a(dVar.h, 8);
            }
        }
    }

    public void a(List<f> list) {
        this.e = list;
        notifyDataSetChanged();
    }

    @Override
    @NonNull
    public BaseHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        int iB = b(i);
        if (i == b) {
            return new b(this.h.inflate(iB, viewGroup, false));
        }
        if (i == d) {
            return new d(this.h.inflate(iB, viewGroup, false));
        }
        if (i == c) {
            FrameLayout frameLayout = (FrameLayout) this.h.inflate(iB, viewGroup, false);
            this.i = frameLayout;
            if (frameLayout.getParent() != null && (this.i.getParent() instanceof ViewGroup)) {
                com.mgtv.thirdsdk.playcore.utils.f.a((ViewGroup) this.i.getParent(), this.i);
            }
            return new a(this.i);
        }
        if (i == a) {
            return new c(this.h.inflate(iB, viewGroup, false));
        }
        return new BaseHolder(this.h.inflate(iB, viewGroup, false));
    }

    private void b(BaseHolder baseHolder, f fVar) {
        if (baseHolder == null || !this.g) {
            return;
        }
        c cVar = (c) baseHolder;
        com.mgtv.thirdsdk.playcore.utils.f.a(cVar.c, 0);
        com.mgtv.thirdsdk.playcore.utils.f.a(cVar.b, 8);
        if (cVar.a == null || fVar == null || TextUtils.isEmpty(fVar.f)) {
            return;
        }
        cVar.a.setText(fVar.f);
    }

    @Override
    public void onBindViewHolder(@NonNull BaseHolder baseHolder, int i) {
        f fVarA = a(i);
        if (fVarA != null) {
            int i2 = fVarA.b;
            if (i2 == b) {
                a(baseHolder, fVarA);
                return;
            }
            if (i2 == c) {
                return;
            }
            if (i2 == d) {
                c(baseHolder, fVarA);
            } else if (i2 == a) {
                b(baseHolder, fVarA);
            }
        }
    }

    public f a(int i) {
        List<f> list = this.e;
        if (list != null && i < list.size()) {
            return this.e.get(i);
        }
        return null;
    }

    private void a(BaseHolder baseHolder, f fVar) {
        VideoDetailInfoBean videoDetailInfoBean;
        boolean z;
        TextView textView;
        System.out.println("bindVideoInfo ");
        if (fVar == null || (videoDetailInfoBean = fVar.d) == null || baseHolder == null || baseHolder.f == null) {
            return;
        }
        b bVar = (b) baseHolder;
        if (videoDetailInfoBean != null) {
            if (fVar.e) {
                com.mgtv.thirdsdk.playcore.utils.f.a(bVar.a, 8);
                return;
            }
            List<VideoDetailInfoBean.InfoBean> introList = videoDetailInfoBean.getIntroList();
            if (TextUtils.isEmpty(videoDetailInfoBean.getTitle())) {
                com.mgtv.thirdsdk.playcore.utils.f.a(bVar.c, 4);
                z = false;
            } else {
                com.mgtv.thirdsdk.playcore.utils.f.a(bVar.c, 0);
                if (this.f && (textView = bVar.c) != null) {
                    textView.setText(videoDetailInfoBean.getTitle());
                }
                z = true;
            }
            if (introList != null) {
                boolean z2 = introList.size() > 0;
                if (!z2 && !z) {
                    com.mgtv.thirdsdk.playcore.utils.f.a(bVar.a, 8);
                    com.mgtv.thirdsdk.playcore.utils.f.a(bVar.i, 8);
                } else {
                    com.mgtv.thirdsdk.playcore.utils.f.a(bVar.a, 0);
                    com.mgtv.thirdsdk.playcore.utils.f.a(bVar.i, 0);
                    LinearLayout linearLayout = bVar.a;
                    if (linearLayout != null) {
                        linearLayout.setClickable(z2);
                    }
                    if (z2) {
                        com.mgtv.thirdsdk.playcore.utils.f.a(bVar.b, 0);
                    } else {
                        com.mgtv.thirdsdk.playcore.utils.f.a(bVar.b, 8);
                    }
                }
                if (z2) {
                    bVar.g.a(introList);
                }
            }
        }
    }

    public void a(OnItemChildClickListener onItemChildClickListener) {
        this.j = onItemChildClickListener;
    }

    public void a(boolean z) {
        this.g = z;
    }
}
