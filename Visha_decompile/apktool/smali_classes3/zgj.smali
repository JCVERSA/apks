.class public final Lzgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2j;


# static fields
.field public static final c:Lzgj;


# instance fields
.field public final b:Lk2j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzgj;

    invoke-direct {v0}, Lzgj;-><init>()V

    sput-object v0, Lzgj;->c:Lzgj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lbhj;

    invoke-direct {v0}, Lbhj;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->b(Ljava/lang/Object;)Lk2j;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lk2j;)Lk2j;

    move-result-object v0

    iput-object v0, p0, Lzgj;->b:Lk2j;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lzgj;->c:Lzgj;

    invoke-virtual {v0}, Lzgj;->a()Lahj;

    move-result-object v0

    invoke-interface {v0}, Lahj;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lahj;
    .locals 0

    iget-object p0, p0, Lzgj;->b:Lk2j;

    invoke-interface {p0}, Lk2j;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lahj;

    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzgj;->a()Lahj;

    move-result-object p0

    return-object p0
.end method
