.class public final synthetic Lgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn$c;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgr;->a:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    iput-object p2, p0, Lgr;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lgr;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget-object v0, p0, Lgr;->a:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    iget-object v1, p0, Lgr;->b:Landroid/widget/ImageView;

    iget-object p0, p0, Lgr;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->j(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
