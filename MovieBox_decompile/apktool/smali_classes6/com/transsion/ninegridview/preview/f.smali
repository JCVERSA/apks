.class public final synthetic Lcom/transsion/ninegridview/preview/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ninegridview/preview/f;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/transsion/ninegridview/preview/f;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ninegridview/preview/f;->a:Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsion/ninegridview/preview/f;->b:J

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->i0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;JZLjava/io/File;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
