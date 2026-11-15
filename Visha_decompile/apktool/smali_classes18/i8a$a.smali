.class public final Li8a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li8a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Li8a$a;

.field public static final b:Lpd1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li8a$a;

    invoke-direct {v0}, Li8a$a;-><init>()V

    sput-object v0, Li8a$a;->a:Li8a$a;

    new-instance v0, Lpd1;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lpd1;-><init>(Ljava/util/List;)V

    sput-object v0, Li8a$a;->b:Lpd1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lpd1;
    .locals 0

    sget-object p0, Li8a$a;->b:Lpd1;

    return-object p0
.end method
