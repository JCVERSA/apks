.class public Lcom/transsion/hubsdk/core/internal/app/TranThubUnlaunchableAppActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/app/ITranUnlaunchableAppActivityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/internal/app/TranUnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
