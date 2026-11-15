package wq;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv._channel.model.ShortTvFilterVal;
import com.transsion.shorttv._channel.model.ShortTvItem;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class r extends Dialog {

    private RecyclerView f74717a;

    private TextView f74718b;

    private ImageView f74719c;

    private a f74720d;

    private Function1 f74721e;

    private ShortTvItem f74722f;

    private String f74723g;

    public final class a extends RecyclerView.Adapter {

        private final List f74724a;

        private final String f74725b;

        private final Function1 f74726c;

        final r f74727d;

        public final class C0926a extends RecyclerView.a0 {

            private final TextView f74728a;

            final a f74729b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0926a(a aVar, View itemView) {
                super(itemView);
                Intrinsics.h(itemView, "itemView");
                this.f74729b = aVar;
                this.f74728a = (TextView) itemView;
            }

            public final TextView f() {
                return this.f74728a;
            }
        }

        public a(r rVar, List data, String str, Function1 onItemClick) {
            Intrinsics.h(data, "data");
            Intrinsics.h(onItemClick, "onItemClick");
            this.f74727d = rVar;
            this.f74724a = data;
            this.f74725b = str;
            this.f74726c = onItemClick;
        }

        public static final void i(a aVar, ShortTvFilterVal shortTvFilterVal, View view) {
            aVar.f74726c.invoke(shortTvFilterVal);
        }

        @Override
        public int getItemCount() {
            return this.f74724a.size();
        }

        @Override
        public void onBindViewHolder(C0926a holder, int i10) {
            Intrinsics.h(holder, "holder");
            final ShortTvFilterVal shortTvFilterVal = (ShortTvFilterVal) this.f74724a.get(i10);
            holder.f().setText(shortTvFilterVal.getName());
            if (Intrinsics.c(shortTvFilterVal.getId(), this.f74725b)) {
                holder.f().setTextColor(-1);
                holder.f().setTypeface(Typeface.DEFAULT_BOLD);
            } else {
                holder.f().setTextColor(-1);
                holder.f().setTypeface(Typeface.DEFAULT);
            }
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    r.a.i(this.f74715a, shortTvFilterVal, view);
                }
            });
        }

        @Override
        public C0926a onCreateViewHolder(ViewGroup parent, int i10) {
            Intrinsics.h(parent, "parent");
            TextView textView = new TextView(parent.getContext());
            textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            textView.setPadding(a0.a(16.0f), 0, a0.a(16.0f), a0.a(37.0f));
            textView.setGravity(8388627);
            textView.setTextSize(16.0f);
            textView.setTextColor(-1);
            return new C0926a(this, textView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context) {
        super(context, R.style.Theme.Black.NoTitleBar.Fullscreen);
        Intrinsics.h(context, "context");
    }

    public static final void f(r rVar, View view) {
        rVar.dismiss();
        Function1 function1 = rVar.f74721e;
        if (function1 != null) {
            function1.invoke(null);
        }
    }

    public static final Unit g(r rVar, ShortTvFilterVal selected) {
        Intrinsics.h(selected, "selected");
        rVar.dismiss();
        Function1 function1 = rVar.f74721e;
        if (function1 != null) {
            function1.invoke(selected.getId());
        }
        return Unit.f64096a;
    }

    public static final void h(View view) {
    }

    public static final void i(r rVar, View view) {
        rVar.dismiss();
        Function1 function1 = rVar.f74721e;
        if (function1 != null) {
            function1.invoke(null);
        }
    }

    public static final Unit k(r rVar, Function1 function1, ShortTvFilterVal selected) {
        Intrinsics.h(selected, "selected");
        rVar.dismiss();
        function1.invoke(selected.getId());
        return Unit.f64096a;
    }

    public final void j(ShortTvItem item, String str, final Function1 callback) {
        Intrinsics.h(item, "item");
        Intrinsics.h(callback, "callback");
        this.f74722f = item;
        this.f74723g = str;
        this.f74721e = callback;
        if (!isShowing()) {
            show();
            return;
        }
        TextView textView = this.f74718b;
        RecyclerView recyclerView = null;
        if (textView == null) {
            Intrinsics.y("mTitleTv");
            textView = null;
        }
        textView.setText(item.getTitle());
        this.f74720d = new a(this, item.getFilterValsV2(), str, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return r.k(this.f74713a, callback, (ShortTvFilterVal) obj);
            }
        });
        RecyclerView recyclerView2 = this.f74717a;
        if (recyclerView2 == null) {
            Intrinsics.y("mRecyclerView");
        } else {
            recyclerView = recyclerView2;
        }
        recyclerView.setAdapter(this.f74720d);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout(-1, -1);
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.addFlags(Integer.MIN_VALUE);
        }
        Window window4 = getWindow();
        if (window4 != null) {
            window4.setStatusBarColor(getContext().getResources().getColor(R$color.short_tv_black_90));
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_black_90));
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.f(this.f74710a, view);
            }
        });
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(12.0f));
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setClickable(true);
        linearLayout2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.h(view);
            }
        });
        TextView textView = new TextView(getContext());
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        this.f74718b = textView;
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R$drawable.short_tv_music_iv_close);
        imageView.setColorFilter(imageView.getContext().getResources().getColor(R$color.short_tv_white));
        imageView.setLayoutParams(new LinearLayout.LayoutParams(a0.a(21.0f), a0.a(21.0f)));
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                r.i(this.f74711a, view);
            }
        });
        this.f74719c = imageView;
        TextView textView2 = this.f74718b;
        RecyclerView recyclerView = null;
        if (textView2 == null) {
            Intrinsics.y("mTitleTv");
            textView2 = null;
        }
        linearLayout2.addView(textView2);
        ImageView imageView2 = this.f74719c;
        if (imageView2 == null) {
            Intrinsics.y("mCloseBtn");
            imageView2 = null;
        }
        linearLayout2.addView(imageView2);
        linearLayout.addView(linearLayout2);
        View view = new View(getContext());
        view.setBackgroundColor(view.getContext().getResources().getColor(R$color.short_tv_white_10));
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, a0.a(1.0f)));
        linearLayout.addView(view);
        RecyclerView recyclerView2 = new RecyclerView(getContext());
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        recyclerView2.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
        recyclerView2.setPadding(0, a0.a(23.0f), 0, a0.a(40.0f));
        recyclerView2.setClipToPadding(false);
        recyclerView2.setClickable(true);
        this.f74717a = recyclerView2;
        linearLayout.addView(recyclerView2);
        setContentView(linearLayout);
        ShortTvItem shortTvItem = this.f74722f;
        if (shortTvItem != null) {
            TextView textView3 = this.f74718b;
            if (textView3 == null) {
                Intrinsics.y("mTitleTv");
                textView3 = null;
            }
            textView3.setText(shortTvItem.getTitle());
            this.f74720d = new a(this, shortTvItem.getFilterValsV2(), this.f74723g, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return r.g(this.f74712a, (ShortTvFilterVal) obj);
                }
            });
            RecyclerView recyclerView3 = this.f74717a;
            if (recyclerView3 == null) {
                Intrinsics.y("mRecyclerView");
            } else {
                recyclerView = recyclerView3;
            }
            recyclerView.setAdapter(this.f74720d);
        }
    }
}
