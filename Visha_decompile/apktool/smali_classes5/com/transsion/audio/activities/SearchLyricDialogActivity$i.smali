.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->m0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->l0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$i;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
