.class public Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackDescription"
.end annotation


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;->id:I

    .line 4
    iput-object p2, p0, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lvxa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranMediaPlayer$TrackDescription;-><init>(ILjava/lang/String;)V

    return-void
.end method
