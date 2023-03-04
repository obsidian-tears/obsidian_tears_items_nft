module {
    public let network = "staging"; // ic, staging, local

    public func getGameCanisterId() : Text {
        if (network == "ic") return "gagfs-yqaaa-aaaao-aaiva-cai";
        if (network == "staging") return "bjwew-5qaaa-aaaan-qc7aa-cai";

        // else local
        return "qvhpv-4qaaa-aaaaa-aaagq-cai";
    };

    public func getCharacterCanisterId() : Text {
        if (network == "ic") return "dhyds-jaaaa-aaaao-aaiia-cai";
        if (network == "staging") return "bhuj6-gaaaa-aaaan-qc7ba-cai";

        // else "local"
        return "rkp4c-7iaaa-aaaaa-aaaca-cai";
    };

    public func getAdminPrincipal() : Text {
        if (network == "ic") return "6ulqo-ikasf-xzltp-ylrhu-qt4gt-nv4rz-gd46e-nagoe-3bo7b-kbm3h-bqe";
        if (network == "staging") return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";

        // else "local"
        return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";
    };
};
