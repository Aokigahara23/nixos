{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    userSettings = {
      "window.zoomLevel" = 4;
      "window.menuBarVisibility" = "hidden";
      "security.allowedUNCHosts" = ["wsl.localhost"];
      "workbench.colorTheme" = "Everforest Dark";
      "everforest.darkContrast" = "hard";
      "window.customMenuBarAltFocus" = false;
      "window.enableMenuBarMnemonics" = false;
      "window.titleBarStyle" = "native";
      "editor.fontFamily" = "JetBrainsMono Nerd font";
      "editor.fontSize" = 19;
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.formatOnSave" = true;
      "editor.cursorSurroundingLines" = 8;
      "editor.cursorStyle" = "block";
      "workbench.colorCustomizations" = {
        "editorIndentGuide.activeBackground1" = "#cba6f7";
      };
      "extensions.experimental.affinity" = {
        "vscodevim.vim" = 1;
      };

      "keyboard.dispatch" = "keyCode";
      "python.analysis.autoFormatStrings" = true;
      "python.analysis.autoImportCompletions" = true;
      "python.analysis.inlayHints.functionReturnTypes" = true;
      "python.analysis.typeCheckingMode" = "basic";
      "python.languageServer" = "Pylance";
      "python.missingPackage.severity" = "Warning";
      "python.testing.pytestEnabled" = true;
      "[python]" = {
        "editor.codeActionsOnSave" = {
          "source.organizeImports" = "explicit";
        };
        "editor.formatOnSaveMode" = "file";
        "editor.formatOnSave" = true;
        "editor.defaultFormatter" = "charliermarsh.ruff";
        "editor.formatOnType" = false;
      };
      "ruff.lint.run" = "onSave";
      "ruff.organizeImports" = false;
      "ruff.codeAction.fixViolation" = {
        "enable" = false;
      };
      "ruff.fixAll" = false;
      "isort.check" = true;
      "isort.importStrategy" = "fromEnvironment";
      "workbench.iconTheme" = "Material Icon Theme";
      "catppuccin.italicKeywords" = false;
      "files.associations" = {
        "*.yml" = "ansible";
        "*.yaml" = "yaml";
      };
      "redhat.telemetry.enabled" = false;
      "git.openRepositoryInParentFolders" = "never";
      "git.confirmSync" = false;
      
      "vim.easymotion" = true;
      "vim.incsearch" = true;
      "vim.useSystemClipboard" = true;
      "vim.useCtrlKeys" = true;
      "vim.hlsearch" = true;
      "vim.leader" = "<space>";
      "vim.handleKeys" = {
        "<C-a>" = false;
        "<C-f>" = false;
        "<C-w>" = false;
        "<C-o>" = false;
      };
      "vim.normalModeKeyBindingsNonRecursive" = [];
      "vim.normalModeKeyBindings" = [
        {
          "before" = ["<leader>" "l" "d"];
          "commands" = ["editor.action.revealDefinition"];
        }
        {
          "before" = ["<leader>" "l" "D"];
          "commands" = ["editor.action.revealDeclaration"];
        }
        {
          "before" = ["<leader>" "l" "r"];
          "commands" = ["editor.action.rename"];
        }
        {
          "before" = ["<leader>" "l" "s"];
          "commands" = ["editor.action.triggerParameterHints"];
        }
        {
          "before" = ["<leader>" "l" "h"];
          "commands" = ["editor.action.showHover"];
        }
        {
          "before" = ["<leader>" "b"];
          "commands" = ["workbench.action.navigateBack"];
        }
        {
          "before" = ["<leader>" "l" "q"];
          "commands" = ["editor.action.quickFix"];
        }
        {
          "before" = ["<leader>" "d" "d"];
          "commands" = ["workbench.action.debug.start"];
        }
        {
          "before" = ["<leader>" "d" "b"];
          "commands" = ["editor.debug.action.toggleBreakpoint"];
        }
        {
          "before" = ["<leader>" "d" "s"];
          "commands" = ["workbench.action.debug.stepOver"];
        }
        {
          "before" = ["<leader>" "d" "i"];
          "commands" = ["workbench.action.debug.stepInto"];
        }
        {
          "before" = ["<leader>" "d" "o"];
          "commands" = ["workbench.action.debug.stepOut"];
        }
        {
          "before" = ["<leader>" "d" "x"];
          "commands" = ["workbench.action.debug.disconnect"];
        }
      ];
      "remote.autoForwardPortsSource" = "hybrid";
      "debug.console.fontFamily" = "JetBrainsMono Nerd font";
      "git.ignoreRebaseWarning" = true;
      "[cpp]" = {
        "editor.defaultFormatter" = null;
      };
      "[jsonc]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "debug.onTaskErrors" = "debugAnyway";
      "debug.allowBreakpointsEverywhere" = true;
      "debug.showBreakpointsInOverviewRuler" = true;
      "cmake.configureOnOpen" = true;
      "cmake.debugConfig" = {
        "type" = "lldb";
        "request" = "launch";
        "program" = "\${command:cmake.launchTargetPath}";
        "args" = [];
        "cwd" = "\${workspaceFolder}";
      };
      "cmake.ctest.testExplorerIntegrationEnabled" = false;
      "cmake.options.statusBarVisibility" = "hidden";
      "cmake.options.advanced" = {
        "variant" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
        };
        "build" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
          "projectStatusVisibility" = "visible";
        };
        "buildTarget" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
          "statusBarLength" = 20;
        };
        "debug" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
          "projectStatusVisibility" = "visible";
        };
        "launchTarget" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
          "statusBarLength" = 20;
        };
        "launch" = {
          "statusBarVisibility" = "visible";
          "inheritDefault" = "visible";
          "projectStatusVisibility" = "visible";
        };
      };
      "cmake.showOptionsMovedNotification" = false;
      "cmake.pinnedCommands" = [
        "workbench.action.tasks.configureTaskRunner"
        "workbench.action.tasks.runTask"
      ];
      "clangd.checkUpdates" = true;
      "testMate.cpp.debug.configTemplate" = {
        "type" = "lldb";
        "program" = "\${exec}";
        "args" = "\${argsArray}";
        "cwd" = "\${cwd}";
        "env" = "\${envObj}";
        "sourceFileMap" = "\${sourceFileMapObj}";
        "externalConsole" = false;
      };
      "todo-tree.highlights.useColourScheme" = true;
      "todo-tree.highlights.customHighlight" = {
        "TODO" = {
          "background" = "#a6e3a1";
          "iconColour" = "#a6e3a1";
          "foreground" = "#1D1D2D";

        };
        "BUG" = {
          "icon" = "bug";
          "background" = "#f38ba8";
          "foreground" = "#1D1D2D";
          "iconColour"=  "#f38ba8";
        };
        "HACK" = {
          "icon" = "tools";
        };
        "FIXME" = {
          "icon" = "flame";
          "background" = "#fab387";
          "foreground" = "#1D1D2D";
          "iconColour" = "#fab387";
        };
      };
    };

    extensions = with pkgs.vscode-extensions;
      [
        vscodevim.vim
        ms-python.python
        charliermarsh.ruff
        vadimcn.vscode-lldb
        gruntfuggly.todo-tree
        ms-vscode.cmake-tools
        esbenp.prettier-vscode
        pkief.material-icon-theme
        llvm-vs-code-extensions.vscode-clangd
      ]
      ++
      pkgs.vscode-utils.extensionsFromVscodeMarketplace
      [
        {
          name = "Everforest";
          publisher = "sainnhe";
          version = "0.3.0";
          sha256 = "sha256-nZirzVvM160ZTpBLTimL2X35sIGy5j2LQOok7a2Yc7U=";
        }
      ];

    keybindings = [
      {
        "key" = "ctrl+p";
        "command" = "workbench.action.quickOpen";
      }
      {
        "key" = "ctrl+e";
        "command" = "-workbench.action.quickOpen";
      }
      {
        "key" = "ctrl+e";
        "command" = "-workbench.action.quickOpenNavigateNextInFilePicker";
        "when" = "inFilesPicker && inQuickOpen";
      }
      {
        "key" = "ctrl+e";
        "command" = "workbench.view.explorer";
        "when" = "viewContainer.workbench.view.explorer.enabled";
      }
      {
        "key" = "ctrl+shift+e";
        "command" = "-workbench.view.explorer";
        "when" = "viewContainer.workbench.view.explorer.enabled";
      }
      {
        "key" = "ctrl+a";
        "command" = "explorer.newFile";
        "when" = "explorerViewletFocus";
      }
      {
        "key" = "ctrl+shift+a";
        "command" = "explorer.newFolder";
        "when" = "explorerViewletFocus";
      }
      {
        "key" = "ctrl+w";
        "command" = "workbench.action.closeActiveEditor";
      }
      {
        "key" = "ctrl+w";
        "command" = "-workbench.action.closeActiveEditor";
      }
      {
        "key" = "ctrl+alt+t";
        "command" = "workbench.action.terminal.toggleTerminal";
        "when" = "terminal.active";
      }
      {
        "key" = "ctrl+`";
        "command" = "-workbench.action.terminal.toggleTerminal";
        "when" = "terminal.active";
      }
      {
        "key" = "alt+e";
        "command" = "editor.action.smartSelect.expand";
        "when" = "editorTextFocus";
      }
      {
        "key" = "shift+alt+right";
        "command" = "-editor.action.smartSelect.expand";
        "when" = "editorTextFocus";
      }
      {
        "key" = "alt+s";
        "command" = "editor.action.smartSelect.shrink";
        "when" = "editorTextFocus";
      }
      {
        "key" = "shift+alt+left";
        "command" = "-editor.action.smartSelect.shrink";
        "when" = "editorTextFocus";
      }
      {
        "key" = "ctrl+r";
        "command" = "renameFile";
        "when" = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        "key" = "f2";
        "command" = "-renameFile";
        "when" = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        "key" = "ctrl+d";
        "command" = "deleteFile";
        "when" = "filesExplorerFocus && foldersViewVisible && !explorerResourceReadonly && !inputFocus";
      }
      {
        "key" = "shift+delete";
        "command" = "-deleteFile";
        "when" = "filesExplorerFocus && foldersViewVisible && !explorerResourceReadonly && !inputFocus";
      }
      {
        "key" = "alt+left";
        "command" = "-workbench.action.navigateBack";
        "when" = "canNavigateBack";
      }
      {
        "key" = "alt+right";
        "command" = "-workbench.action.navigateForward";
        "when" = "canNavigateForward";
      }
      {
        "key" = "ctrl+right";
        "command" = "workbench.action.nextEditor";
      }
      {
        "key" = "ctrl+pagedown";
        "command" = "-workbench.action.nextEditor";
      }
      {
        "key" = "ctrl+left";
        "command" = "workbench.action.previousEditor";
      }
      {
        "key" = "ctrl+pageup";
        "command" = "-workbench.action.previousEditor";
      }
      {
        "key" = "ctrl+t";
        "command" = "workbench.action.terminal.focus";
        "when" = "accessibilityModeEnabled && accessibleViewOnLastLine && terminalHasBeenCreated && accessibleViewCurrentProviderId == 'terminal' || accessibilityModeEnabled && accessibleViewOnLastLine && terminalProcessSupported && accessibleViewCurrentProviderId == 'terminal'";
      }
      {
        "key" = "ctrl+down";
        "command" = "-workbench.action.terminal.focus";
        "when" = "accessibilityModeEnabled && accessibleViewOnLastLine && terminalHasBeenCreated && accessibleViewCurrentProviderId == 'terminal' || accessibilityModeEnabled && accessibleViewOnLastLine && terminalProcessSupported && accessibleViewCurrentProviderId == 'terminal'";
      }
      {
        "key" = "ctrl+d";
        "command" = "workbench.view.debug";
        "when" = "viewContainer.workbench.view.debug.enabled";
      }
      {
        "key" = "ctrl+shift+d";
        "command" = "-workbench.view.debug";
        "when" = "viewContainer.workbench.view.debug.enabled";
      }
      {
        "key" = "alt+f";
        "command" = "actions.find";
        "when" = "editorFocus || editorIsOpen";
      }
      {
        "key" = "ctrl+f";
        "command" = "-actions.find";
        "when" = "editorFocus || editorIsOpen";
      }
      {
        "key" = "ctrl+h";
        "command" = "-editor.action.startFindReplaceAction";
        "when" = "editorFocus || editorIsOpen";
      }
      {
        "key" = "alt+left";
        "command" = "editor.action.previousMatchFindAction";
        "when" = "editorFocus && findInputFocussed";
      }
      {
        "key" = "shift+enter";
        "command" = "-editor.action.previousMatchFindAction";
        "when" = "editorFocus && findInputFocussed";
      }
      {
        "key" = "alt+right";
        "command" = "editor.action.nextMatchFindAction";
        "when" = "editorFocus && findInputFocussed";
      }
      {
        "key" = "enter";
        "command" = "-editor.action.nextMatchFindAction";
        "when" = "editorFocus && findInputFocussed";
      }
      {
        "key" = "ctrl+numpad_add";
        "command" = "-workbench.action.zoomIn";
      }
      {
        "key" = "ctrl+numpad_subtract";
        "command" = "-workbench.action.zoomOut";
      }
      {
        "key" = "ctrl+numpad_add";
        "command" = "editor.action.fontZoomIn";
      }
      {
        "key" = "ctrl+numpad_subtract";
        "command" = "editor.action.fontZoomOut";
      }
      {
        "key" = "ctrl+numpad_multiply";
        "command" = "editor.action.fontZoomReset";
      }
      {
        "key" = "ctrl+alt+f";
        "command" = "workbench.action.findInFiles";
      }
      {
        "key" = "ctrl+shift+f";
        "command" = "-workbench.action.findInFiles";
      }
    ];
  };
}
