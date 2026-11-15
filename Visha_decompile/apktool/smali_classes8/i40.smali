.class public abstract Li40;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll40;

.field public static final b:Ln40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll40;

    invoke-direct {v0}, Ll40;-><init>()V

    sput-object v0, Li40;->a:Ll40;

    new-instance v0, Ln40;

    invoke-direct {v0}, Ln40;-><init>()V

    sput-object v0, Li40;->b:Ln40;

    return-void
.end method

.method public static a(Ly0;)Ll40;
    .locals 2

    invoke-virtual {p0}, Ly0;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Li40;->a:Ll40;

    return-object p0

    :cond_0
    new-instance v0, Ll40;

    invoke-direct {v0, p0}, Ll40;-><init>(Ly0;)V

    return-object v0
.end method
