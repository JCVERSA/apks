.class public final synthetic Lt1i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic b:Lw1i;


# direct methods
.method public synthetic constructor <init>(Lw1i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1i;->b:Lw1i;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lt1i;->b:Lw1i;

    invoke-static {p0}, Lw1i;->h(Lw1i;)V

    return-void
.end method
