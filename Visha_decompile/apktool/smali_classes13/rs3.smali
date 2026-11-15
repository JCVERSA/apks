.class public final synthetic Lrs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs3;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final subscribe(Lrc7;)V
    .locals 0

    iget-object p0, p0, Lrs3;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lts3;->a(Landroid/content/Context;Lrc7;)V

    return-void
.end method
