.class public final synthetic Laaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Laaa;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Laaa;->b:Z

    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;->n(ZLandroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method
