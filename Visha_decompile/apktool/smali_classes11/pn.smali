.class public final synthetic Lpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ltn$c;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Ltn$c;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn;->b:Ltn$c;

    iput-object p2, p0, Lpn;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpn;->b:Ltn$c;

    iget-object p0, p0, Lpn;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Ltn;->b(Ltn$c;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/graphics/Bitmap;)V

    return-void
.end method
