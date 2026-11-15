package com.transsion.magicmovie.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.magicshow.R;
import java.util.List;

public class SplashImageViewPagerAdapter extends RecyclerView.Adapter<CardViewHolder> {
    public List o;

    public static class CardViewHolder extends RecyclerView.ViewHolder {
        public ImageView p;

        public CardViewHolder(View view) {
            super(view);
            this.p = (ImageView) view.findViewById(R.id.iv_splash_image);
        }
    }

    @Override
    public void onBindViewHolder(CardViewHolder cardViewHolder, int i) {
        cardViewHolder.p.setImageResource(((Integer) this.o.get(i)).intValue());
    }

    @Override
    public CardViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CardViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.splash_image_item, viewGroup, false));
    }

    public void d(List list) {
        this.o = list;
    }

    @Override
    public int getItemCount() {
        return this.o.size();
    }
}
