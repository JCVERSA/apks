.class public final synthetic Lf0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2j;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0j;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lf0j;->b:Landroid/content/Context;

    sget-object v0, Lq1j;->g:Ljava/lang/Object;

    invoke-static {p0}, Lvzi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p0

    return-object p0
.end method
