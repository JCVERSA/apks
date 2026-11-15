.class public interface abstract Lyo2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo2$a;,
        Lyo2$c;,
        Lyo2$d;,
        Lyo2$e;
    }
.end annotation


# static fields
.field public static final a:Lyo2$c;

.field public static final b:Lyo2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyo2$c;->a:Lyo2$c;

    sput-object v0, Lyo2;->a:Lyo2$c;

    new-instance v0, Lyo2$b;

    invoke-direct {v0}, Lyo2$b;-><init>()V

    sput-object v0, Lyo2;->b:Lyo2;

    return-void
.end method


# virtual methods
.method public abstract a(Lyo2$e;Lyo2$a;)Ljn5;
.end method
