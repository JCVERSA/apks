.class public final Lk37$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lk37$a;

.field public static final b:Lk37;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk37$a;

    invoke-direct {v0}, Lk37$a;-><init>()V

    sput-object v0, Lk37$a;->a:Lk37$a;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;-><init>(Ljava/util/Map;)V

    sput-object v0, Lk37$a;->b:Lk37;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lk37;
    .locals 0

    sget-object p0, Lk37$a;->b:Lk37;

    return-object p0
.end method
