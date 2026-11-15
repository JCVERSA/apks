.class public interface abstract Lafa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lafa;

.field public static final b:Lafa;

.field public static final c:Lafa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwea;

    invoke-direct {v0}, Lwea;-><init>()V

    sput-object v0, Lafa;->a:Lafa;

    new-instance v0, Lxea;

    invoke-direct {v0}, Lxea;-><init>()V

    sput-object v0, Lafa;->b:Lafa;

    new-instance v0, Lyea;

    invoke-direct {v0}, Lyea;-><init>()V

    sput-object v0, Lafa;->c:Lafa;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;
.end method
