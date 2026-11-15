.class public final Lhd5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhd5;

.field public static final b:Lay3$b;

.field public static final c:Lay3$b;

.field public static final d:Lay3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhd5;

    invoke-direct {v0}, Lhd5;-><init>()V

    sput-object v0, Lhd5;->a:Lhd5;

    invoke-static {}, Lay3$d;->c()Lay3$b;

    move-result-object v0

    sput-object v0, Lhd5;->b:Lay3$b;

    invoke-static {}, Lay3$d;->c()Lay3$b;

    move-result-object v0

    sput-object v0, Lhd5;->c:Lay3$b;

    invoke-static {v0}, Lay3$d;->b(Lay3$d;)Lay3$b;

    move-result-object v0

    sput-object v0, Lhd5;->d:Lay3$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lay3$b;
    .locals 0

    sget-object p0, Lhd5;->b:Lay3$b;

    return-object p0
.end method
