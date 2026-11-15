.class public final synthetic La37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lc37;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lc37;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La37;->b:Lc37;

    iput-object p2, p0, La37;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La37;->b:Lc37;

    iget-object p0, p0, La37;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lc37;->a(Lc37;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
