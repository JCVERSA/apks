.class public interface abstract Lmga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzfa;


# static fields
.field public static final Y4:Lzfa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleScalar;

    const-string v1, ""

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmga;->Y4:Lzfa;

    return-void
.end method


# virtual methods
.method public abstract getAsString()Ljava/lang/String;
.end method
