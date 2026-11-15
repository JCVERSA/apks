.class public interface abstract Lcom/transsion/liblan/interfaces/ITranMediaFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranComponentFactory;


# static fields
.field public static final FACTORY_ID:Ljava/lang/String; = "com.transsion.liblan.interfaces.ITranMediaFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getMediaFromAssetFileDescriptor(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/content/res/AssetFileDescriptor;)Lcom/transsion/liblan/interfaces/ITranMedia;
.end method

.method public abstract getMediaFromFileDescriptor(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/io/FileDescriptor;)Lcom/transsion/liblan/interfaces/ITranMedia;
.end method

.method public abstract getMediaFromLocal(Lcom/transsion/liblan/interfaces/ITranLibLAN;Ljava/lang/String;)Lcom/transsion/liblan/interfaces/ITranMedia;
.end method

.method public abstract getMediaFromUri(Lcom/transsion/liblan/interfaces/ITranLibLAN;Landroid/net/Uri;)Lcom/transsion/liblan/interfaces/ITranMedia;
.end method
