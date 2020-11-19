function varargout = optimizacionModerna(varargin)
% OPTIMIZACIONMODERNA MATLAB code for optimizacionModerna.fig
%      OPTIMIZACIONMODERNA, by itself, creates a new OPTIMIZACIONMODERNA or raises the existing
%      singleton*.
%
%      H = OPTIMIZACIONMODERNA returns the handle to a new OPTIMIZACIONMODERNA or the handle to
%      the existing singleton*.
%
%      OPTIMIZACIONMODERNA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPTIMIZACIONMODERNA.M with the given input arguments.
%
%      OPTIMIZACIONMODERNA('Property','Value',...) creates a new OPTIMIZACIONMODERNA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before optimizacionModerna_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to optimizacionModerna_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help optimizacionModerna

% Last Modified by GUIDE v2.5 19-Nov-2020 11:28:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @optimizacionModerna_OpeningFcn, ...
                   'gui_OutputFcn',  @optimizacionModerna_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before optimizacionModerna is made visible.
function optimizacionModerna_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to optimizacionModerna (see VARARGIN)

% Choose default command line output for optimizacionModerna
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes optimizacionModerna wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = optimizacionModerna_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
popMenu1Value = get(hObject,'Value');
popupMenu3Value = get(handles.popupmenu3,'Value');
if popMenu1Value == 3 || popMenu1Value == 8 || popupMenu3Value == 4
    set(handles.edit9,'BackgroundColor',[0.94 0.94 0.94]);
    set(handles.edit9,'String','');
    set(handles.edit10,'BackgroundColor',[0.94 0.94 0.94]);
    set(handles.edit10,'String','');
else
    set(handles.edit9,'BackgroundColor',[0.5 0.5 0.5]);
    set(handles.edit9,'String','/');
    set(handles.edit10,'BackgroundColor',[0.5 0.5 0.5]);
    set(handles.edit10,'String','/');
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%if get(handles.popupmenu2,'Value') == 2
%    close(optimizacionModerna)
%    genetico
%elseif get(handles.popupmenu2,'Value') == 3
%    close(optimizacionModerna)
%    recorridoSimulado
%end

switch get(handles.popupmenu1,'Value')
    case 2 %Cosine Mixture Function
        [F, Details] = bfm(1,0); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango dependiendo la dimensión
        popupMenu3Value = get(handles.popupmenu3,'Value');
        rango = Details.Constraints;
        if popupMenu3Value ~= 4
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            sw2 = verificarRango(rango,limInf_X,limSup_X);
        else
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            limInf_Y = str2double(get(handles.edit9,'String'));
            limSup_Y = str2double(get(handles.edit10,'String'));
            sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        end
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 3 %Bukin 2 Function
        [F, Details] = bfm(2,1:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango
        rango = Details.Constraints;
        limInf_X = str2double(get(handles.edit1,'String'));
        limSup_X = str2double(get(handles.edit2,'String'));
        limInf_Y = str2double(get(handles.edit9,'String'));
        limSup_Y = str2double(get(handles.edit10,'String'));
        sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 4 %Keane Function
        [F, Details] = bfm(3,0:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango
        rango = Details.Constraints;
        limInf = str2double(get(handles.edit1,'String'));
        limSup = str2double(get(handles.edit2,'String'));
        sw2 = verificarRango(rango,limInf,limSup);
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 5 %Mishra 2 Function
        [F, Details] = bfm(4,1:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango dependiendo la dimensión
        popupMenu3Value = get(handles.popupmenu3,'Value');
        rango = Details.Constraints;
        if popupMenu3Value ~= 4
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            sw2 = verificarRango(rango,limInf_X,limSup_X);
        else
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            limInf_Y = str2double(get(handles.edit9,'String'));
            limSup_Y = str2double(get(handles.edit10,'String'));
            sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        end
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 6 %Trigonometric 1 Function
        [F, Details] = bfm(5,1:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango dependiendo la dimensión
        popupMenu3Value = get(handles.popupmenu3,'Value');
        rango = Details.Constraints;
        if popupMenu3Value ~= 4
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            sw2 = verificarRango(rango,limInf_X,limSup_X);
        else
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            limInf_Y = str2double(get(handles.edit9,'String'));
            limSup_Y = str2double(get(handles.edit10,'String'));
            sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        end
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 7 %Exponential Function
        [F, Details] = bfm(7,1:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango dependiendo la dimensión
        popupMenu3Value = get(handles.popupmenu3,'Value');
        rango = Details.Constraints;
        if popupMenu3Value ~= 4
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            sw2 = verificarRango(rango,limInf_X,limSup_X);
        else
            limInf_X = str2double(get(handles.edit1,'String'));
            limSup_X = str2double(get(handles.edit2,'String'));
            limInf_Y = str2double(get(handles.edit9,'String'));
            limSup_Y = str2double(get(handles.edit10,'String'));
            sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        end
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    case 8 %Hosaki Function
        [F, Details] = bfm(8,1:1:5); %Pidiendo detalles de función a bfm.m
        sw1 = true; %True si las dimensiones son correctas, False en caso contrario
        sw2 = true; %True si el rango es correcto, False en caso contrario
        
        %Verificar Dimensiones
        maxDim = Details.MaxDimensions;
        contents = cellstr(get(handles.popupmenu3,'String'));
        usrDimension = str2double(contents{get(handles.popupmenu3,'Value')});
        sw1 = verifyDimensions(maxDim, usrDimension);
        
        %Verificar Rango
        rango = Details.Constraints;
        limInf_X = str2double(get(handles.edit1,'String'));
        limSup_X = str2double(get(handles.edit2,'String'));
        limInf_Y = str2double(get(handles.edit9,'String'));
        limSup_Y = str2double(get(handles.edit10,'String'));
        sw2 = verificarRangoXY(rango,limInf_X, limSup_X,limInf_Y,limSup_Y);
        
        %Abrir siguiente ventana en caso de que rango y dimensión sean
        %correctos
        metodo = get(handles.popupmenu2,'Value');
        abrirVentana(sw1,sw2,metodo);
        
        %Mandar mensaje de error
        if ~sw1 && ~sw2
            set(handles.edit7,'String','Error: Dimensión y rango inválidos');
        elseif ~sw1
            set(handles.edit7,'String','Error: Dimensión inválida');
        elseif ~sw2
            set(handles.edit7,'String','Error: Rango inválido');
        end
        
    otherwise
        disp('Opción inválida')
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
popupMenu3Value = get(hObject,'Value');
popupMenu1Value = get(handles.popupmenu1,'Value');
if popupMenu1Value == 3 || popupMenu1Value == 8 || popupMenu3Value == 4
    set(handles.edit9,'BackgroundColor',[0.94 0.94 0.94]);
    set(handles.edit9,'String','');
    set(handles.edit10,'BackgroundColor',[0.94 0.94 0.94]);
    set(handles.edit10,'String','');
else
    set(handles.edit9,'BackgroundColor',[0.5 0.5 0.5]);
    set(handles.edit9,'String','/');
    set(handles.edit10,'BackgroundColor',[0.5 0.5 0.5]);
    set(handles.edit10,'String','/');
end

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
set(hObject,'ForegroundColor',[1,0,0]);


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double



% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
