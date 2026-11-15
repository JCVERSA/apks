package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.hisavana.sdk.R;
import defpackage.ul4;
import java.util.List;

public class NativeBean implements Parcelable {
    public static final Parcelable.Creator<NativeBean> CREATOR = new Parcelable.Creator<NativeBean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public NativeBean createFromParcel(Parcel parcel) {
            return new NativeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public NativeBean[] newArray(int i) {
            return new NativeBean[i];
        }
    };
    private ButtonDTO button;
    private DescriptDTO descript;
    private LogoDTO logo;
    private List<MainImagesDTO> mainImages;
    private Integer rating;
    private TitleDTO title;
    private String version;

    public NativeBean() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public ButtonDTO getButton() {
        return this.button;
    }

    public String getButtonTxt(int i) {
        if (i == 2) {
            return ul4.a().getResources().getString(R.string.open);
        }
        if (i == 3) {
            return ul4.a().getResources().getString(R.string.install);
        }
        ButtonDTO buttonDTO = this.button;
        return buttonDTO == null ? "" : buttonDTO.getText();
    }

    public String getDescriptionTxt() {
        DescriptDTO descriptDTO = this.descript;
        return descriptDTO == null ? "" : descriptDTO.getText();
    }

    public LogoDTO getLogo() {
        return this.logo;
    }

    public String getLogoUrl() {
        LogoDTO logoDTO = this.logo;
        return logoDTO == null ? "" : logoDTO.getUrl();
    }

    public List<MainImagesDTO> getMainImages() {
        return this.mainImages;
    }

    public Integer getRating() {
        Integer num = this.rating;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getTitleTxt() {
        TitleDTO titleDTO = this.title;
        return titleDTO == null ? "" : titleDTO.getText();
    }

    public String getVersion() {
        String str = this.version;
        return str == null ? "" : str;
    }

    public void setButton(ButtonDTO buttonDTO) {
        this.button = buttonDTO;
    }

    public void setDescript(DescriptDTO descriptDTO) {
        this.descript = descriptDTO;
    }

    public void setLogo(LogoDTO logoDTO) {
        this.logo = logoDTO;
    }

    public void setMainImages(List<MainImagesDTO> list) {
        this.mainImages = list;
    }

    public void setRating(Integer num) {
        this.rating = num;
    }

    public void setTitle(TitleDTO titleDTO) {
        this.title = titleDTO;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "NativeBean{version='" + this.version + "', rating=" + this.rating + ", title=" + this.title + ", descript=" + this.descript + ", button=" + this.button + ", logo=" + this.logo + ", mainImages=" + this.mainImages + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.version);
        if (this.rating == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.rating.intValue());
        }
        parcel.writeParcelable(this.title, i);
        parcel.writeParcelable(this.descript, i);
        parcel.writeParcelable(this.button, i);
        parcel.writeParcelable(this.logo, i);
        parcel.writeTypedList(this.mainImages);
    }

    public static class ButtonDTO implements Parcelable {
        public static final Parcelable.Creator<ButtonDTO> CREATOR = new Parcelable.Creator<ButtonDTO>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public ButtonDTO createFromParcel(Parcel parcel) {
                return new ButtonDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public ButtonDTO[] newArray(int i) {
                return new ButtonDTO[i];
            }
        };
        private final String text;

        public ButtonDTO(String str) {
            this.text = str;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "ButtonDTO{text='" + this.text + "'}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.text);
        }

        public ButtonDTO(Parcel parcel) {
            this.text = parcel.readString();
        }
    }

    public static class DescriptDTO implements Parcelable {
        public static final Parcelable.Creator<DescriptDTO> CREATOR = new Parcelable.Creator<DescriptDTO>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DescriptDTO createFromParcel(Parcel parcel) {
                return new DescriptDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DescriptDTO[] newArray(int i) {
                return new DescriptDTO[i];
            }
        };
        private final String text;

        public DescriptDTO(String str) {
            this.text = str;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "DescriptDTO{text='" + this.text + "'}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.text);
        }

        public DescriptDTO(Parcel parcel) {
            this.text = parcel.readString();
        }
    }

    public static class LogoDTO implements Parcelable {
        public static final Parcelable.Creator<LogoDTO> CREATOR = new Parcelable.Creator<LogoDTO>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public LogoDTO createFromParcel(Parcel parcel) {
                return new LogoDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public LogoDTO[] newArray(int i) {
                return new LogoDTO[i];
            }
        };
        private Integer height;
        private final String url;
        private Integer width;

        public LogoDTO(String str) {
            this.url = str;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public Integer getHeight() {
            Integer num = this.height;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public Integer getWidth() {
            Integer num = this.width;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String toString() {
            return "LogoDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + '}';
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.url);
            if (this.width == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.width.intValue());
            }
            if (this.height == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.height.intValue());
            }
        }

        public LogoDTO(Parcel parcel) {
            this.url = parcel.readString();
            if (parcel.readByte() == 0) {
                this.width = null;
            } else {
                this.width = Integer.valueOf(parcel.readInt());
            }
            if (parcel.readByte() == 0) {
                this.height = null;
            } else {
                this.height = Integer.valueOf(parcel.readInt());
            }
        }
    }

    public static class MainImagesDTO implements Parcelable {
        public static final Parcelable.Creator<MainImagesDTO> CREATOR = new Parcelable.Creator<MainImagesDTO>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public MainImagesDTO createFromParcel(Parcel parcel) {
                return new MainImagesDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public MainImagesDTO[] newArray(int i) {
                return new MainImagesDTO[i];
            }
        };
        private Integer height;
        private String interactiveUrl;
        private final String url;
        private Integer width;

        public MainImagesDTO(String str) {
            this.url = str;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public Integer getHeight() {
            Integer num = this.height;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getInteractiveUrl() {
            return this.interactiveUrl;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public Integer getWidth() {
            Integer num = this.width;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String toString() {
            return "MainImagesDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + '}';
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.url);
            if (this.width == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.width.intValue());
            }
            if (this.height == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.height.intValue());
            }
            parcel.writeString(this.interactiveUrl);
        }

        public MainImagesDTO(Parcel parcel) {
            this.url = parcel.readString();
            if (parcel.readByte() == 0) {
                this.width = null;
            } else {
                this.width = Integer.valueOf(parcel.readInt());
            }
            if (parcel.readByte() == 0) {
                this.height = null;
            } else {
                this.height = Integer.valueOf(parcel.readInt());
            }
            this.interactiveUrl = parcel.readString();
        }
    }

    public static class TitleDTO implements Parcelable {
        public static final Parcelable.Creator<TitleDTO> CREATOR = new Parcelable.Creator<TitleDTO>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TitleDTO createFromParcel(Parcel parcel) {
                return new TitleDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public TitleDTO[] newArray(int i) {
                return new TitleDTO[i];
            }
        };
        private final String text;

        public TitleDTO(String str) {
            this.text = str;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "TitleDTO{text='" + this.text + "'}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.text);
        }

        public TitleDTO(Parcel parcel) {
            this.text = parcel.readString();
        }
    }

    public NativeBean(Parcel parcel) {
        this.version = parcel.readString();
        if (parcel.readByte() == 0) {
            this.rating = null;
        } else {
            this.rating = Integer.valueOf(parcel.readInt());
        }
        this.title = (TitleDTO) parcel.readParcelable(TitleDTO.class.getClassLoader());
        this.descript = (DescriptDTO) parcel.readParcelable(DescriptDTO.class.getClassLoader());
        this.button = (ButtonDTO) parcel.readParcelable(ButtonDTO.class.getClassLoader());
        this.logo = (LogoDTO) parcel.readParcelable(LogoDTO.class.getClassLoader());
        this.mainImages = parcel.createTypedArrayList(MainImagesDTO.CREATOR);
    }
}
