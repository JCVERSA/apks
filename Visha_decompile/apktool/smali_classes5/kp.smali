.class public final synthetic Lkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkp;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkp;->b:Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    check-cast p1, Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->D0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
