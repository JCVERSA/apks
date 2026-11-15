.class public final Lta9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsa9;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lu74;

.field public final c:Lu74;

.field public final d:Lu74;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lu74;Lu74;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lta9;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lta9;->b:Lu74;

    .line 4
    iput-object p3, p0, Lta9;->c:Lu74;

    .line 5
    invoke-static {}, Lya9;->c()Lu74;

    move-result-object p1

    iput-object p1, p0, Lta9;->d:Lu74;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lu74;Lu74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lta9;-><init>(Ljava/lang/Object;Lu74;Lu74;)V

    return-void
.end method


# virtual methods
.method public a()Lu74;
    .locals 0

    iget-object p0, p0, Lta9;->c:Lu74;

    return-object p0
.end method

.method public b()Lu74;
    .locals 0

    iget-object p0, p0, Lta9;->d:Lu74;

    return-object p0
.end method

.method public c()Lu74;
    .locals 0

    iget-object p0, p0, Lta9;->b:Lu74;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lta9;->a:Ljava/lang/Object;

    return-object p0
.end method
