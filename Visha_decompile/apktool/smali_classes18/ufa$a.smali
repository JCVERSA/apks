.class public final Lufa$a;
.super Lufa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lufa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lufa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lufa$a;

    invoke-direct {v0}, Lufa$a;-><init>()V

    sput-object v0, Lufa$a;->a:Lufa$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lufa;-><init>(Ltfa;)V

    return-void
.end method

.method public static synthetic f()Lufa$a;
    .locals 1

    sget-object v0, Lufa$a;->a:Lufa$a;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
