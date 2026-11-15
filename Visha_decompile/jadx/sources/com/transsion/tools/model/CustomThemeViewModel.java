package com.transsion.tools.model;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.tools.R;
import com.transsion.tools.beans.ThemeColor;
import com.transsion.tools.beans.ThemeImage;
import java.util.ArrayList;
import java.util.List;

public class CustomThemeViewModel extends AndroidViewModel {
    public static final String THEME_CACHE_KEY = "theme_cache_key";
    private MutableLiveData<List<ThemeImage>> mBackgroundList;
    private MutableLiveData<List<ThemeColor>> mColorList;
    private MutableLiveData<List<ThemeImage>> mFrameList;
    private MutableLiveData<List<ThemeImage>> mThumbList;

    public CustomThemeViewModel(@NonNull Application application) {
        super(application);
        this.mBackgroundList = new MutableLiveData<>();
        this.mThumbList = new MutableLiveData<>();
        this.mFrameList = new MutableLiveData<>();
        this.mColorList = new MutableLiveData<>();
    }

    public void generateDefaultBackground() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeImage(R.drawable.ic_camera, true));
        arrayList.add(new ThemeImage(R.drawable.ic_white, true, 1));
        arrayList.add(new ThemeImage(R.drawable.ic_black, true, 2));
        this.mBackgroundList.postValue(arrayList);
    }

    public void generateDefaultColor() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeColor(R.color.custom_color_0, "custom_theme_color_0"));
        arrayList.add(new ThemeColor(R.color.custom_color_1, "custom_theme_color_1"));
        arrayList.add(new ThemeColor(R.color.custom_color_8, "custom_theme_color_8"));
        arrayList.add(new ThemeColor(R.color.custom_color_2, "custom_theme_color_2"));
        arrayList.add(new ThemeColor(R.color.custom_color_9, "custom_theme_color_9"));
        arrayList.add(new ThemeColor(R.color.custom_color_4, "custom_theme_color_4"));
        arrayList.add(new ThemeColor(R.color.custom_color_3, "custom_theme_color_3"));
        arrayList.add(new ThemeColor(R.color.custom_color_15, "custom_theme_color_15"));
        arrayList.add(new ThemeColor(R.color.custom_color_18, "custom_theme_color_18"));
        arrayList.add(new ThemeColor(R.color.custom_color_19, "custom_theme_color_19"));
        arrayList.add(new ThemeColor(R.color.custom_color_5, "custom_theme_color_5"));
        arrayList.add(new ThemeColor(R.color.custom_color_13, "custom_theme_color_13"));
        arrayList.add(new ThemeColor(R.color.custom_color_17, "custom_theme_color_17"));
        arrayList.add(new ThemeColor(R.color.custom_color_7, "custom_theme_color_7"));
        arrayList.add(new ThemeColor(R.color.custom_color_6, "custom_theme_color_6"));
        arrayList.add(new ThemeColor(R.color.custom_color_10, "custom_theme_color_10"));
        arrayList.add(new ThemeColor(R.color.custom_color_16, "custom_theme_color_16"));
        arrayList.add(new ThemeColor(R.color.custom_color_11, "custom_theme_color_11"));
        arrayList.add(new ThemeColor(R.color.custom_color_20, "custom_theme_color_20"));
        arrayList.add(new ThemeColor(R.color.custom_color_21, "custom_theme_color_21"));
        this.mColorList.postValue(arrayList);
    }

    public void generateDefaultFrames() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeImage(R.drawable.ic_oval, true));
        arrayList.add(new ThemeImage(R.drawable.ic_star, true));
        arrayList.add(new ThemeImage(R.drawable.ic_pirate_hat, R.drawable.ic_pirate_hat_preview, true));
        arrayList.add(new ThemeImage(R.drawable.ic_beard, R.drawable.ic_beard_preview, true));
        arrayList.add(new ThemeImage(R.drawable.ic_birthday, R.drawable.ic_birthday_preview, true));
        arrayList.add(new ThemeImage(R.drawable.ic_fox, R.drawable.ic_fox_preview, true));
        this.mFrameList.postValue(arrayList);
    }

    public void generateDefaultThumbs() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeImage(R.drawable.ic_camera, true));
        arrayList.add(new ThemeImage(R.drawable.ic_default_thumb, true, 1));
        arrayList.add(new ThemeImage(R.drawable.chrismas_thumb, true, 2));
        arrayList.add(new ThemeImage(R.drawable.animal_thumb, true, 3));
        arrayList.add(new ThemeImage(R.drawable.sealife_thumb, true, 4));
        arrayList.add(new ThemeImage(R.drawable.halloween_thumb, true, 5));
        arrayList.add(new ThemeImage(R.drawable.warrior_thumb, true, 6));
        arrayList.add(new ThemeImage(R.drawable.emoji_thumb_preview, true, 7));
        arrayList.add(new ThemeImage(R.drawable.sea_thumb, true, 8));
        this.mThumbList.postValue(arrayList);
    }

    public MutableLiveData<List<ThemeImage>> getBackgroundList() {
        return this.mBackgroundList;
    }

    public MutableLiveData<List<ThemeColor>> getColorList() {
        return this.mColorList;
    }

    public MutableLiveData<List<ThemeImage>> getFrameList() {
        return this.mFrameList;
    }

    public MutableLiveData<List<ThemeImage>> getThumbList() {
        return this.mThumbList;
    }
}
