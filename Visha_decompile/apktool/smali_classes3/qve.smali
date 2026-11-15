.class public final Lqve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final b:Lqve;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lqve;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqve;-><init>(ZLs4g;)V

    sput-object v0, Lqve;->b:Lqve;

    return-void
.end method

.method public constructor <init>(ZLs4g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLwff;)Lqve;
    .locals 0

    sget-object p0, Lqve;->b:Lqve;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
