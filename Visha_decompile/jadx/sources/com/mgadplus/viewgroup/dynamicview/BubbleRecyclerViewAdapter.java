package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mgmi.R;
import defpackage.ey4;
import defpackage.g4d;
import defpackage.l2d;
import defpackage.l4d;
import defpackage.lbd;
import java.util.ArrayList;
import java.util.List;

public class BubbleRecyclerViewAdapter extends RecyclerView.Adapter<b> {
    public Context p;
    public a r;
    public List o = new ArrayList();
    public boolean q = false;

    public interface a {
        void leftClick();

        void onAddItem(int i);

        void onBindComplete();

        void onImageClick(l2d l2dVar);

        void rightClick();
    }

    public class b extends RecyclerView.ViewHolder {
        public View p;

        public class a implements View.OnClickListener {
            public final int b;

            public a(int i) {
                this.b = i;
            }

            @Override
            public void onClick(View view) {
                if (BubbleRecyclerViewAdapter.this.r != null) {
                    BubbleRecyclerViewAdapter.this.r.onImageClick((l2d) BubbleRecyclerViewAdapter.this.o.get(this.b));
                }
            }
        }

        public class ViewOnClickListenerC0158b implements View.OnClickListener {
            public final int b;

            public ViewOnClickListenerC0158b(int i) {
                this.b = i;
            }

            @Override
            public void onClick(View view) {
                if (BubbleRecyclerViewAdapter.this.r != null) {
                    BubbleRecyclerViewAdapter.this.r.onImageClick((l2d) BubbleRecyclerViewAdapter.this.o.get(this.b));
                }
            }
        }

        public class c implements View.OnClickListener {
            public final TextView b;
            public final View c;
            public final View d;
            public final View e;

            public c(TextView textView, View view, View view2, View view3) {
                this.b = textView;
                this.c = view;
                this.d = view2;
                this.e = view3;
            }

            @Override
            public void onClick(View view) {
                BubbleRecyclerViewAdapter.this.q = true;
                ((ImageView) b.this.p.findViewById(R.id.leftImage)).setImageResource(R.drawable.mgmi_radio_checked);
                this.b.setTextColor(BubbleRecyclerViewAdapter.this.p.getResources().getColor(R.color.mgmi_bubble_yellow_color));
                l4d.a(this.c, 0.6f);
                this.d.setClickable(false);
                this.e.setClickable(false);
                if (BubbleRecyclerViewAdapter.this.r != null) {
                    BubbleRecyclerViewAdapter.this.r.leftClick();
                }
            }
        }

        public class d implements View.OnClickListener {
            public final TextView b;
            public final View c;
            public final View d;
            public final View e;

            public d(TextView textView, View view, View view2, View view3) {
                this.b = textView;
                this.c = view;
                this.d = view2;
                this.e = view3;
            }

            @Override
            public void onClick(View view) {
                BubbleRecyclerViewAdapter.this.q = true;
                ((ImageView) b.this.p.findViewById(R.id.rightImage)).setImageResource(R.drawable.mgmi_radio_checked);
                this.b.setTextColor(BubbleRecyclerViewAdapter.this.p.getResources().getColor(R.color.mgmi_bubble_yellow_color));
                l4d.a(this.c, 0.6f);
                this.d.setClickable(false);
                this.e.setClickable(false);
                if (BubbleRecyclerViewAdapter.this.r != null) {
                    BubbleRecyclerViewAdapter.this.r.rightClick();
                }
            }
        }

        public b(View view) {
            super(view);
            this.p = view;
        }

        public void b(int i) {
            if (((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).i() == 1) {
                ((TextView) this.p.findViewById(R.id.content)).setText(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).b());
                ((TextView) this.p.findViewById(R.id.contactTitle)).setText(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).d());
                ey4.d((ImageView) this.p.findViewById(R.id.contactIcon), Uri.parse(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f()), lbd.c(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f(), lbd.E).M(true).n(1).t(), null);
                this.p.setOnClickListener(new a(i));
                return;
            }
            if (((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).i() == 2) {
                ((TextView) this.p.findViewById(R.id.contactTitle)).setText(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).d());
                ey4.d((ImageView) this.p.findViewById(R.id.contactIcon), Uri.parse(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f()), lbd.c(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f(), lbd.E).M(true).n(1).t(), null);
                ey4.d((ImageView) this.p.findViewById(R.id.content), Uri.parse(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).h()), g4d.l(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).h()) ? lbd.c(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f(), lbd.E).G(30).R(true).n(0).s(true).t() : lbd.c(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).f(), lbd.E).G(30).R(true).n(0).t(), null);
                this.p.setOnClickListener(new ViewOnClickListenerC0158b(i));
                return;
            }
            if (((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).i() == 3) {
                View viewFindViewById = this.p.findViewById(R.id.leftArea);
                TextView textView = (TextView) this.p.findViewById(R.id.leftText);
                textView.setText(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).k());
                View viewFindViewById2 = this.p.findViewById(R.id.rightArea);
                TextView textView2 = (TextView) this.p.findViewById(R.id.rightText);
                textView2.setText(((l2d) BubbleRecyclerViewAdapter.this.o.get(i)).l());
                View viewFindViewById3 = this.p.findViewById(R.id.bubble_option_item);
                if (!BubbleRecyclerViewAdapter.this.q) {
                    viewFindViewById.setOnClickListener(new c(textView, viewFindViewById3, viewFindViewById, viewFindViewById2));
                    viewFindViewById2.setOnClickListener(new d(textView2, viewFindViewById3, viewFindViewById2, viewFindViewById));
                } else {
                    l4d.a(viewFindViewById3, 0.6f);
                    viewFindViewById.setClickable(false);
                    viewFindViewById2.setClickable(false);
                }
            }
        }
    }

    public BubbleRecyclerViewAdapter(Context context) {
        this.p = context;
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new b(LayoutInflater.from(this.p).inflate(R.layout.mgmi_bubble_corner_item, viewGroup, false));
        }
        if (i == 2) {
            return new b(LayoutInflater.from(this.p).inflate(R.layout.mgmi_image_bubble_corner_item, viewGroup, false));
        }
        if (i == 3) {
            return new b(LayoutInflater.from(this.p).inflate(R.layout.mgmi_option_bubble_item, viewGroup, false));
        }
        return null;
    }

    public void g(l2d l2dVar) {
        this.o.add(l2dVar);
        notifyItemInserted(this.o.size() - 1);
        a aVar = this.r;
        if (aVar != null) {
            aVar.onAddItem(this.o.size() - 1);
        }
    }

    @Override
    public int getItemCount() {
        List list = this.o;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public int getItemViewType(int i) {
        List list = this.o;
        if (list != null) {
            return ((l2d) list.get(i)).i();
        }
        return -1;
    }

    public void h(a aVar) {
        this.r = aVar;
    }

    @Override
    public void onViewRecycled(b bVar) {
        super.onViewRecycled(bVar);
    }

    @Override
    public void onBindViewHolder(b bVar, int i) {
        bVar.b(i);
        if (this.r == null || this.o.isEmpty() || i != this.o.size() - 1) {
            return;
        }
        this.r.onBindComplete();
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
    }
}
