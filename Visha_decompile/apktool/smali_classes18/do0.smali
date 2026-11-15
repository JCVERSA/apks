.class public final Ldo0;
.super Leo0;
.source "SourceFile"


# static fields
.field public static final c:Ldo0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldo0;

    invoke-direct {v0}, Ldo0;-><init>()V

    sput-object v0, Ldo0;->c:Ldo0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c([B)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Leo0;->a([B)V

    return-void
.end method

.method public final d()[B
    .locals 1

    const/16 v0, 0x200

    invoke-super {p0, v0}, Leo0;->b(I)[B

    move-result-object p0

    return-object p0
.end method
