# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class K8stool < Formula
  desc "A command-line tool for managing Kubernetes resources"
  homepage "https://github.com/eniayomi/k8stool"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eniayomi/k8stool/releases/download/v0.1.0/k8stool_Darwin_x86_64.tar.gz"
      sha256 "b2d51668e1740f0569ab0f5d101a59814b1747b98389ca7debd9cdb3cc1ea4b6"

      def install
        bin.install "k8stool"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/eniayomi/k8stool/releases/download/v0.1.0/k8stool_Darwin_arm64.tar.gz"
      sha256 "60bcd44fd472cbdfaa57b345088b4c4215c600066fe699ec326a1db39a2de275"

      def install
        bin.install "k8stool"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eniayomi/k8stool/releases/download/v0.1.0/k8stool_Linux_x86_64.tar.gz"
        sha256 "650b3f9e1747d5f74d9c1a5e4c6801a17e3dfb60a6c1c6803c9c987f86537f2d"

        def install
          bin.install "k8stool"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eniayomi/k8stool/releases/download/v0.1.0/k8stool_Linux_arm64.tar.gz"
        sha256 "18c3ba25cd593340ad5f9044299edf8d97c98109b9bf72e16b5bb425fa8b2e32"

        def install
          bin.install "k8stool"
        end
      end
    end
  end

  test do
    system "#{bin}/k8stool version"
  end
end
