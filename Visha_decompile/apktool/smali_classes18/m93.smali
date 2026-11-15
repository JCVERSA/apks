.class public final Lm93;
.super Lah;
.source "SourceFile"


# static fields
.field public static final b:Lm93;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm93;

    invoke-direct {v0}, Lm93;-><init>()V

    sput-object v0, Lm93;->b:Lm93;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lah;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic c(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lm93;->k(ILjava/lang/Void;)V

    return-void
.end method

.method public f(I)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lm93;->f(I)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    new-instance p0, Lm93$a;

    invoke-direct {p0}, Lm93$a;-><init>()V

    return-object p0
.end method

.method public k(ILjava/lang/Void;)V
    .locals 0

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
