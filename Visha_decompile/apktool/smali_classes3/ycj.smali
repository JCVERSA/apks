.class public final Lycj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2j;


# static fields
.field public static final c:Lycj;


# instance fields
.field public final b:Lk2j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lycj;

    invoke-direct {v0}, Lycj;-><init>()V

    sput-object v0, Lycj;->c:Lycj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcdj;

    invoke-direct {v0}, Lcdj;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->b(Ljava/lang/Object;)Lk2j;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lk2j;)Lk2j;

    move-result-object v0

    iput-object v0, p0, Lycj;->b:Lk2j;

    return-void
.end method

.method public static a()J
    .locals 2

    sget-object v0, Lycj;->c:Lycj;

    invoke-virtual {v0}, Lycj;->b()Ladj;

    move-result-object v0

    invoke-interface {v0}, Ladj;->zza()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b()Ladj;
    .locals 0

    iget-object p0, p0, Lycj;->b:Lk2j;

    invoke-interface {p0}, Lk2j;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ladj;

    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lycj;->b()Ladj;

    move-result-object p0

    return-object p0
.end method
