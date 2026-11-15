.class public final synthetic Ln80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iput p2, p0, Ln80;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln80;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iget p0, p0, Ln80;->c:F

    invoke-static {v0, p0}, Lcom/transsion/playercommon/activities/BaseActivity;->S(Lcom/transsion/playercommon/activities/BaseActivity;F)V

    return-void
.end method
