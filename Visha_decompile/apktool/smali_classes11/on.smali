.class public final synthetic Lon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lon;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lon;->c:Z

    iput-object p3, p0, Lon;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lon;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lon;->c:Z

    iget-object p0, p0, Lon;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, p0, p1}, Ltn;->c(Landroid/content/Context;ZLcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
