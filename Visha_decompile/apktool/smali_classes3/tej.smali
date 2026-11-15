.class public final Ltej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2j;


# static fields
.field public static final c:Ltej;


# instance fields
.field public final b:Lk2j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltej;

    invoke-direct {v0}, Ltej;-><init>()V

    sput-object v0, Ltej;->c:Ltej;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lxej;

    invoke-direct {v0}, Lxej;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->b(Ljava/lang/Object;)Lk2j;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lk2j;)Lk2j;

    move-result-object v0

    iput-object v0, p0, Ltej;->b:Lk2j;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Ltej;->c:Ltej;

    invoke-virtual {v0}, Ltej;->a()Lvej;

    move-result-object v0

    invoke-interface {v0}, Lvej;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lvej;
    .locals 0

    iget-object p0, p0, Ltej;->b:Lk2j;

    invoke-interface {p0}, Lk2j;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvej;

    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltej;->a()Lvej;

    move-result-object p0

    return-object p0
.end method
