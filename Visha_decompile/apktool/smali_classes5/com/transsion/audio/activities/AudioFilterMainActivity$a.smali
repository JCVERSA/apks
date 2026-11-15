.class public Lcom/transsion/audio/activities/AudioFilterMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioFilterMainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioFilterMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    iget p1, p1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->c:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "vd_audio_filt_hide_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterMainActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->C0(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V

    goto :goto_0

    :cond_1
    const-string p1, "vd_audio_filt_fd_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterMainActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->E0(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V

    goto :goto_0

    :cond_2
    const-string p1, "vd_audio_filt_time_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterMainActivity;

    const-string p1, "filter_duration"

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->D0(Lcom/transsion/audio/activities/AudioFilterMainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "vd_audio_filt_size_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;->b:Lcom/transsion/audio/activities/AudioFilterMainActivity;

    const-string p1, "filter_size"

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->D0(Lcom/transsion/audio/activities/AudioFilterMainActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
