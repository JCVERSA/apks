.class public interface abstract Lof/b$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof/b$b$b;
    }
.end annotation


# static fields
.field public static final a:Lof/b$b$b;

.field public static final b:Lof/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lof/b$b$b;->a:Lof/b$b$b;

    .line 2
    .line 3
    sput-object v0, Lof/b$b;->a:Lof/b$b$b;

    .line 4
    .line 5
    new-instance v0, Lof/b$b$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lof/b$b$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lof/b$b;->b:Lof/b$b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
