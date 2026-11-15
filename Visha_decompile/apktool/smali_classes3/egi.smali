.class public final Legi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lt8i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lhii;

    invoke-direct {v0}, Lhii;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Legi;->a:Landroid/content/Context;

    iput-object v0, p0, Legi;->b:Lt8i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lv9i;
    .locals 2

    new-instance v0, Lghi;

    iget-object v1, p0, Legi;->b:Lt8i;

    iget-object p0, p0, Legi;->a:Landroid/content/Context;

    invoke-interface {v1}, Lt8i;->zza()Lv9i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lghi;-><init>(Landroid/content/Context;Lv9i;)V

    return-object v0
.end method
