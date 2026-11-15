.class public final Lkm6$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm6$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkm6$a$a;

.field public static final b:Lkm6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkm6$a$a;

    invoke-direct {v0}, Lkm6$a$a;-><init>()V

    sput-object v0, Lkm6$a$a;->a:Lkm6$a$a;

    new-instance v0, Lkm6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkm6;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkm6$a$a;->b:Lkm6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkm6;
    .locals 0

    sget-object p0, Lkm6$a$a;->b:Lkm6;

    return-object p0
.end method
