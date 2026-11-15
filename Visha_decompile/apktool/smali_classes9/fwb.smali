.class public final synthetic Lfwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljwb;


# direct methods
.method public synthetic constructor <init>(Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwb;->b:Ljwb;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfwb;->b:Ljwb;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, p1}, Ljwb;->g(Ljwb;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
