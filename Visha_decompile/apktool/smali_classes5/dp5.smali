.class public final synthetic Ldp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/LockScreenActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp5;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldp5;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/LyricData;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->E0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/LyricData;)V

    return-void
.end method
