.class public final synthetic Lp80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lp80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->R(Lcom/transsion/playercommon/activities/BaseActivity;)V

    return-void
.end method
