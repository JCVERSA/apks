.class public final Lzh1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lzh1$a;

.field public static final b:Lzh1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzh1$a;

    invoke-direct {v0}, Lzh1$a;-><init>()V

    sput-object v0, Lzh1$a;->a:Lzh1$a;

    new-instance v0, Lzh1$a$a;

    invoke-direct {v0}, Lzh1$a$a;-><init>()V

    sput-object v0, Lzh1$a;->b:Lzh1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lzh1;
    .locals 0

    sget-object p0, Lzh1$a;->b:Lzh1;

    return-object p0
.end method
